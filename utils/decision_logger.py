#!/usr/bin/env python3
"""
utils/decision_logger.py — Deterministic file I/O for the NHEFS AI Analyzer Plugin.

ALL writes to workspace/analysis_plan.json, workspace/decision_log.jsonl, and workspace/_update_signal.json
MUST go through this module.  Direct open(..., 'w') on those files is forbidden
in executor skills.

Guaranteed behaviours:
  - Atomic writes: analysis_plan.json and plan snapshots use tempfile → fsync →
    os.replace so the dashboard never reads a partial file.
  - Append-only log: decision_log.jsonl is only ever opened in append mode with
    fsync; existing lines are never modified.
  - Consistent triple-write: save_plan() and append_event() always update all
    three live-state files together (plan + log + signal).

CLI usage (no import-path gymnastics needed from Bash tool):
    python3 utils/decision_logger.py load-plan
    python3 utils/decision_logger.py save-plan '<json>'
    python3 utils/decision_logger.py append-event '<json>'
    python3 utils/decision_logger.py make-step-dir <step_id>
    python3 utils/decision_logger.py refresh-signal

    Set env var ANALYSIS_PROJECT_ROOT to override the working directory.

Python import usage (from executor code):
    import sys
    sys.path.insert(0, "/path/to/nhefs-ai-analyzer/utils")
    from decision_logger import DecisionLogger
    dl = DecisionLogger("/path/to/project")
"""

from __future__ import annotations

import json
import os
import sys
import tempfile
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Dict, List, Optional


# ─────────────────────────────────────────────────────────────────────────────
# Low-level I/O helpers (no class state)
# ─────────────────────────────────────────────────────────────────────────────

def _now_utc() -> str:
    """Return current time as ISO 8601 UTC string with Z suffix."""
    return (
        datetime.now(timezone.utc)
        .isoformat(timespec="seconds")
        .replace("+00:00", "Z")
    )


def _atomic_write_bytes(path: Path, data: bytes) -> None:
    """
    Write bytes to path atomically via tempfile → fsync → os.replace.
    Creates parent directories if needed.
    Safe against partial writes and crashes mid-write.
    """
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    fd, tmp_path = tempfile.mkstemp(dir=path.parent, suffix=".tmp")
    try:
        with os.fdopen(fd, "wb") as fh:
            fh.write(data)
            fh.flush()
            os.fsync(fh.fileno())
        os.replace(tmp_path, path)
    except Exception:
        try:
            os.unlink(tmp_path)
        except OSError:
            pass
        raise


def atomic_write_json(path: Path | str, data: Dict[str, Any], indent: int = 2) -> None:
    """Serialize dict to pretty-printed JSON and write atomically."""
    raw = json.dumps(data, indent=indent, ensure_ascii=False) + "\n"
    _atomic_write_bytes(Path(path), raw.encode("utf-8"))


def read_json_safe(path: Path | str, default: Any = None) -> Any:
    """Read and parse JSON from path; return default on any error."""
    try:
        with open(path, "r", encoding="utf-8") as fh:
            return json.load(fh)
    except Exception:
        return default


def append_jsonl(path: Path | str, obj: Dict[str, Any]) -> None:
    """
    Append one JSON line to a .jsonl file.
    Creates the file (and parent dirs) if it doesn't exist.
    fsync'd before return.
    """
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    line = json.dumps(obj, ensure_ascii=False) + "\n"
    with open(path, "a", encoding="utf-8") as fh:
        fh.write(line)
        fh.flush()
        os.fsync(fh.fileno())


def read_jsonl(path: Path | str) -> List[Dict[str, Any]]:
    """Read all valid JSON lines from a .jsonl file; skip blank/malformed."""
    path = Path(path)
    events: List[Dict[str, Any]] = []
    if not path.exists():
        return events
    with open(path, "r", encoding="utf-8") as fh:
        for line in fh:
            line = line.strip()
            if not line:
                continue
            try:
                events.append(json.loads(line))
            except json.JSONDecodeError:
                pass  # silently skip malformed lines
    return events


# ─────────────────────────────────────────────────────────────────────────────
# DecisionLogger
# ─────────────────────────────────────────────────────────────────────────────

VALID_EVENT_TYPES = frozenset({
    "plan_created",
    "step_started",
    "step_committed",
    "decision_point",
    "branch_created",
    "branch_committed",
    "branch_abandoned",
    "rewind",
    "validation_result",
    "plan_modified",
    "mode_switch",
})


class DecisionLogger:
    """
    Manages all writes to the three live-state files:
      analysis_plan.json · decision_log.jsonl · _update_signal.json

    All methods are synchronous and intended for single-threaded skill execution.
    """

    PLAN_FILE   = "workspace/analysis_plan.json"
    LOG_FILE    = "workspace/decision_log.jsonl"
    SIGNAL_FILE = "workspace/_update_signal.json"

    def __init__(self, project_dir: str | Path = "."):
        self.root = Path(project_dir).resolve()

    # ── path helpers ──────────────────────────────────────────────────────────

    @property
    def plan_path(self) -> Path:
        return self.root / self.PLAN_FILE

    @property
    def log_path(self) -> Path:
        return self.root / self.LOG_FILE

    @property
    def signal_path(self) -> Path:
        return self.root / self.SIGNAL_FILE

    def plan_version_path(self, version: int) -> Path:
        return self.root / "workspace" / "plan_versions" / f"v{version}.json"

    def step_dir(self, step_id: str) -> Path:
        return self.root / "workspace" / "artifacts" / step_id

    # ── plan management ───────────────────────────────────────────────────────

    def load_plan(self) -> Dict[str, Any]:
        """
        Load analysis_plan.json.

        Recovery order:
          1. analysis_plan.json (normal)
          2. plan_versions/vN.json with the highest N (if plan is missing/corrupt)

        Raises RuntimeError if no valid plan is found at all.
        """
        plan = read_json_safe(self.plan_path)
        if plan is not None:
            return plan

        # Fallback: find the highest-numbered snapshot
        versions_dir = self.root / "workspace" / "plan_versions"
        if versions_dir.exists():
            candidates = sorted(
                (p for p in versions_dir.glob("v*.json")
                 if p.stem[1:].isdigit()),
                key=lambda p: int(p.stem[1:]),
                reverse=True,
            )
            for snap in candidates:
                plan = read_json_safe(snap)
                if plan is not None:
                    return plan

        raise RuntimeError(
            f"No valid analysis_plan.json found in {self.root}. "
            "Checked workspace/plan_versions/ fallback — none available."
        )

    def save_plan(self, plan: Dict[str, Any]) -> None:
        """
        Atomically save analysis_plan.json, snapshot to workspace/plan_versions/vN.json,
        and refresh _update_signal.json.

        Caller must bump plan["version"] before calling this.
        """
        # 1. Atomic write of live plan
        atomic_write_json(self.plan_path, plan)

        # 2. Immutable snapshot (plan_versions/vN.json)
        version = plan.get("version", 1)
        snap_path = self.plan_version_path(version)
        snap_path.parent.mkdir(parents=True, exist_ok=True)
        atomic_write_json(snap_path, plan)

        # 3. Refresh dashboard signal
        self._refresh_signal(plan=plan)

    # ── event log ─────────────────────────────────────────────────────────────

    def append_event(self, event: Dict[str, Any]) -> Dict[str, Any]:
        """
        Append one event dict to decision_log.jsonl and refresh _update_signal.json.

        Auto-fills missing fields:
          event_id    → "evt_NNN" (next sequential number)
          timestamp   → current UTC ISO 8601
          plan_version → from current analysis_plan.json (or 1 if missing)
          triggered_by → "auto"
          step_id     → None
          payload     → {}

        Raises ValueError if event_type is not a recognised type.
        Returns the completed event dict.
        """
        event = dict(event)  # never mutate the caller's dict

        # Validate event_type
        event_type = event.get("event_type", "")
        if event_type not in VALID_EVENT_TYPES:
            raise ValueError(
                f"Unknown event_type '{event_type}'. "
                f"Valid types: {sorted(VALID_EVENT_TYPES)}"
            )

        # Auto event_id: scan existing log for the current max
        if "event_id" not in event:
            existing = read_jsonl(self.log_path)
            max_n = 0
            for e in existing:
                eid = e.get("event_id", "")
                if isinstance(eid, str) and eid.startswith("evt_") and eid[4:].isdigit():
                    max_n = max(max_n, int(eid[4:]))
            event["event_id"] = f"evt_{max_n + 1:03d}"

        # Auto timestamp
        if "timestamp" not in event:
            event["timestamp"] = _now_utc()

        # Auto plan_version
        if "plan_version" not in event:
            plan = read_json_safe(self.plan_path, {})
            event["plan_version"] = plan.get("version", 1)

        # Other defaults
        event.setdefault("triggered_by", "auto")
        event.setdefault("step_id", None)
        event.setdefault("payload", {})

        # Append to log
        append_jsonl(self.log_path, event)

        # Refresh signal
        self._refresh_signal(last_event=event)

        return event

    # Backward-compatible wrapper used by old call sites
    def append(
        self,
        event_type: str,
        triggered_by: str,
        plan_version: int,
        step_id: Optional[str] = None,
        **payload,
    ) -> Dict[str, Any]:
        """
        Backward-compatible interface.  Prefer append_event() for new code.
        """
        event = {
            "event_type": event_type,
            "triggered_by": triggered_by,
            "plan_version": plan_version,
            "step_id": step_id,
            "payload": payload,
        }
        return self.append_event(event)

    # ── step directory & artifact helpers ─────────────────────────────────────

    def make_step_dir(self, step_id: str) -> Path:
        """
        Ensure workspace/artifacts/{step_id}/ exists and return its Path.
        Call before writing any artifact for this step.
        """
        d = self.step_dir(step_id)
        d.mkdir(parents=True, exist_ok=True)
        return d

    def write_artifact(
        self,
        step_id: str,
        filename: str,
        content: str | bytes,
        encoding: str = "utf-8",
    ) -> Path:
        """
        Atomically write a text or binary artifact to workspace/artifacts/{step_id}/{filename}.
        Creates the directory if it doesn't exist.  Returns the file Path.
        """
        d = self.make_step_dir(step_id)
        dest = d / filename
        if isinstance(content, str):
            raw = content.encode(encoding)
        else:
            raw = content
        _atomic_write_bytes(dest, raw)
        return dest

    # ── read helpers ──────────────────────────────────────────────────────────

    def read_all(self) -> List[Dict[str, Any]]:
        """Return all events in the log, in order."""
        return read_jsonl(self.log_path)

    def read_for_step(self, step_id: str) -> List[Dict[str, Any]]:
        return [e for e in self.read_all() if e.get("step_id") == step_id]

    def read_for_version(self, plan_version: int) -> List[Dict[str, Any]]:
        return [e for e in self.read_all() if e.get("plan_version") == plan_version]

    # ── signal ────────────────────────────────────────────────────────────────

    def _refresh_signal(
        self,
        plan: Optional[Dict[str, Any]] = None,
        last_event: Optional[Dict[str, Any]] = None,
    ) -> None:
        """Rewrite _update_signal.json from current plan + log state."""
        if plan is None:
            plan = read_json_safe(self.plan_path, {})

        events = read_jsonl(self.log_path)
        last = last_event or (events[-1] if events else {})

        signal = {
            "last_updated": _now_utc(),
            "plan_version": plan.get("version", 1),
            "log_event_count": len(events),
            "last_event_id": last.get("event_id"),
            "last_event_type": last.get("event_type"),
            "last_step_id": last.get("step_id"),
        }
        atomic_write_json(self.signal_path, signal)


# ─────────────────────────────────────────────────────────────────────────────
# CLI
# ─────────────────────────────────────────────────────────────────────────────

def _cli() -> None:
    root = os.environ.get("ANALYSIS_PROJECT_ROOT", ".")
    dl = DecisionLogger(root)

    if len(sys.argv) < 2:
        print(__doc__)
        sys.exit(0)

    cmd = sys.argv[1]

    if cmd == "load-plan":
        try:
            plan = dl.load_plan()
            print(json.dumps(plan, indent=2))
        except RuntimeError as e:
            print(f"[error] {e}", file=sys.stderr)
            sys.exit(1)

    elif cmd == "save-plan":
        if len(sys.argv) < 3:
            print("Usage: decision_logger.py save-plan '<json>'", file=sys.stderr)
            sys.exit(1)
        plan = json.loads(sys.argv[2])
        dl.save_plan(plan)
        print(f"[ok] plan v{plan.get('version')} saved + snapshotted + signal refreshed")

    elif cmd == "append-event":
        if len(sys.argv) < 3:
            print("Usage: decision_logger.py append-event '<json>'", file=sys.stderr)
            sys.exit(1)
        raw = json.loads(sys.argv[2])
        try:
            completed = dl.append_event(raw)
            print(json.dumps(completed))
        except ValueError as e:
            print(f"[error] {e}", file=sys.stderr)
            sys.exit(1)

    elif cmd == "make-step-dir":
        if len(sys.argv) < 3:
            print("Usage: decision_logger.py make-step-dir <step_id>", file=sys.stderr)
            sys.exit(1)
        d = dl.make_step_dir(sys.argv[2])
        print(f"[ok] {d}")

    elif cmd == "refresh-signal":
        dl._refresh_signal()
        print("[ok] signal refreshed")

    else:
        print(f"[error] Unknown command: '{cmd}'", file=sys.stderr)
        print("Commands: load-plan | save-plan | append-event | make-step-dir | refresh-signal")
        sys.exit(1)


if __name__ == "__main__":
    _cli()
