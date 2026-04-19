"""
nhefs_full_harmonizer.py
------------------------
Convert the CDC NHANES I + NHEFS public-use fixed-width data files into
pandas-friendly parquet files, then stitch together the baseline + four
follow-up waves + mortality into a single cross-wave dataset suitable
for the T2/T11/T12 regression tests.

Inputs  (expected under datasets/NHEFS Dataset/):
    NHANES_I_1971_75/
        sas/DU*.sas                   SAS input scripts (column positions)
        data/DU*.txt                  fixed-width data tapes
    NHEFS_CDC_PublicUse/
        01_1982-84/                   intv82.inputs.labels.txt + N82int.txt ...
        02_1986/                      intv86.inputs.labels.txt + n86int.txt
        03_1987/                      intv87.inputs.labels.txt + n87int.txt
        04_1992/                      intv92 + mort + vital status files

Outputs (written to tests/nhefs_fixtures/data/nhefs_full/):
    baseline.parquet         DU4081 + DU4233 + DU4800 + DU4701 + DU4704
    followup_1982.parquet    NHEFS interview wave 1
    followup_1986.parquet    NHEFS interview wave 2
    followup_1987.parquet    NHEFS interview wave 3
    followup_1992.parquet    NHEFS interview wave 4
    mortality.parquet        NHEFS 1992 mortality file
    vital_status.parquet     NHEFS 1992 vital & tracking status
    schema.json              canonical column names → NHANES raw codes
    _MANIFEST.md             human-readable summary of what was produced

Usage:
    python utils/nhefs_full_harmonizer.py
    python utils/nhefs_full_harmonizer.py --only wbc_chd
    python utils/nhefs_full_harmonizer.py --dry-run

Notes
-----
* This script DOES NOT attempt to reproduce Bazzano 2002's folate values.
  Folate is NOT in the NHANES I public release (DU4703 nutrient composition
  only carries protein/fat/carb/Ca/Fe/Na/K/VitA/thiamine/riboflavin/
  niacin/VitC). Bazzano derived folate values by matching NHANES I food
  codes to an external USDA SR database. That merge is out of scope here.
  T2 therefore remains `requires_external_folate_db: true`.
* WBC (DU4800 var N1LB0529) and pulse rate (DU4233 var N1ME0225) ARE in
  the public release, so T12 can be built from these files directly.
* Fruit/veg FFQ totals (DU4701 vars N1FF0245/0249/0253) ARE in the
  public release, so T11 can use "all fruits+vegs", "rich in vitamin A",
  and "rich in vitamin C" frequency counts as exposures.
"""

from __future__ import annotations

import argparse
import json
import re
import sys
from datetime import datetime
from pathlib import Path

import pandas as pd


# --------------------------------------------------------------------------- #
# Path configuration
# --------------------------------------------------------------------------- #
REPO_ROOT = Path(__file__).resolve().parents[1]
DATASETS_ROOT = REPO_ROOT / "datasets" / "NHEFS Dataset"
NHANES_I = DATASETS_ROOT / "NHANES_I_1971_75"
NHEFS_FU = DATASETS_ROOT / "NHEFS_CDC_PublicUse"

OUTPUT_ROOT = REPO_ROOT / "tests" / "nhefs_fixtures" / "data" / "nhefs_full"


# --------------------------------------------------------------------------- #
# SAS parser — two grammars:
#
# Grammar A (NHANES I DU*.sas):
#     INPUT
#         SEQN 1-5
#         N1LB0006 6-9
#         N1LB0529 529-531
#     ;
#     LABEL
#         N1LB0006 = "CATALOG NUMBER 4271"
#
# Grammar B (NHEFS follow-up *.inputs.labels.txt):
#     INPUT @1    YRDTH    $CHAR2.
#           @3    SEQNUM   $CHAR5.
#           @20   RESSTAT  $CHAR1.
#           @100  SBP      3.
#           @103  BMI      4.1
#     ;
#     LABEL
#         RESSTAT = 'RESIDENTIAL STATUS'
# --------------------------------------------------------------------------- #

# Grammar A input row:  VARNAME START-END   or   VARNAME COL
_A_INPUT_RE = re.compile(
    r"^\s*([A-Z][A-Z0-9_]*)\s+(\d+)(?:-(\d+))?\s*$", re.IGNORECASE
)
# Grammar A label row:  VARNAME = "DESCRIPTION"
_A_LABEL_RE = re.compile(
    r'^\s*([A-Z][A-Z0-9_]*)\s*=\s*"([^"]*)"\s*;?\s*$', re.IGNORECASE
)
# Grammar B input row: @N VARNAME $CHAR5. / @N VARNAME 5. / @N VARNAME 5.1
_B_INPUT_RE = re.compile(
    r"^\s*@(\d+)\s+([A-Z][A-Z0-9_]*)\s+(\$?CHAR)?(\d+)\.(\d+)?\s*",
    re.IGNORECASE,
)
# Grammar B label row: VARNAME = 'DESC'
_B_LABEL_RE = re.compile(
    r"^\s*([A-Z][A-Z0-9_]*)\s*=\s*['\"]([^'\"]*)['\"]\s*;?\s*$",
    re.IGNORECASE,
)


def _strip_comments(text: str) -> str:
    # Remove C-style /* ... */ comments
    text = re.sub(r"/\*.*?\*/", "", text, flags=re.DOTALL)
    # Remove SAS star-comments:  * ... ;  or  *** ... ;  (single-line)
    text = re.sub(r"(?m)^\s*\*[^;]*;", "", text)
    return text


def parse_sas_script(path: Path) -> dict:
    """
    Parse a NHANES I .sas script or NHEFS .inputs.labels.txt file into
    a column schema usable by pd.read_fwf.

    Returns a dict with:
        columns: list of {name, start (1-indexed), end (inclusive), dtype, label}
        grammar: "A" or "B"
    """
    raw = path.read_text(encoding="latin-1", errors="replace")
    text = _strip_comments(raw)

    # Find the INPUT block
    m = re.search(r"\bINPUT\b(.*?);", text, re.IGNORECASE | re.DOTALL)
    if not m:
        raise ValueError(f"No INPUT section in {path}")
    input_block = m.group(1)

    # Find a LABEL block (optional)
    labels: dict[str, str] = {}
    label_blocks = re.findall(r"\bLABEL\b(.*?);", text, re.IGNORECASE | re.DOTALL)
    for block in label_blocks:
        for line in block.splitlines():
            lm = _A_LABEL_RE.match(line) or _B_LABEL_RE.match(line)
            if lm:
                labels[lm.group(1).upper()] = lm.group(2).strip()

    columns: list[dict] = []
    grammar = None
    for line in input_block.splitlines():
        line = line.strip()
        if not line:
            continue

        # Try grammar B first (it has a distinctive leading @)
        bm = _B_INPUT_RE.match(line)
        if bm:
            start = int(bm.group(1))
            name = bm.group(2).upper()
            is_char = bool(bm.group(3))
            width = int(bm.group(4))
            decimals = int(bm.group(5)) if bm.group(5) else 0
            end = start + width - 1
            columns.append({
                "name": name,
                "start": start,
                "end": end,
                "dtype": "char" if is_char else ("float" if decimals else "int"),
                "decimals": decimals,
                "label": labels.get(name, ""),
            })
            grammar = grammar or "B"
            continue

        am = _A_INPUT_RE.match(line)
        if am:
            name = am.group(1).upper()
            start = int(am.group(2))
            end = int(am.group(3)) if am.group(3) else start
            columns.append({
                "name": name,
                "start": start,
                "end": end,
                "dtype": "int",  # NHANES I numeric unless label implies decimal
                "decimals": 0,
                "label": labels.get(name, ""),
            })
            grammar = grammar or "A"
            continue

        # Skip lines like ';' or unrelated content
        if line in (";", ""):
            continue

    if not columns:
        raise ValueError(f"No columns parsed from {path}")

    return {"columns": columns, "grammar": grammar or "unknown"}


# --------------------------------------------------------------------------- #
# Fixed-width reader
# --------------------------------------------------------------------------- #
def read_fixed_width(data_path: Path, schema: dict,
                     usecols: list[str] | None = None) -> pd.DataFrame:
    """Read a fixed-width file using a parsed schema."""
    cols = schema["columns"]
    if usecols is not None:
        wanted = {c.upper() for c in usecols}
        cols = [c for c in cols if c["name"] in wanted]

    colspecs = [(c["start"] - 1, c["end"]) for c in cols]  # 0-indexed half-open
    names = [c["name"] for c in cols]
    dtypes = {c["name"]: str for c in cols}

    df = pd.read_fwf(
        data_path,
        colspecs=colspecs,
        names=names,
        dtype=dtypes,
        encoding="latin-1",
    )

    # Coerce numerics where the schema says so
    for c in cols:
        if c["dtype"] == "char":
            continue
        series = pd.to_numeric(df[c["name"]], errors="coerce")
        if c.get("decimals"):
            series = series / (10 ** c["decimals"])
        df[c["name"]] = series

    return df


# --------------------------------------------------------------------------- #
# Canonical variable map
#
# Maps human-readable canonical names used by T2/T11/T12 to the raw
# NHANES I / NHEFS variable codes. Keeping this explicit so skill code
# downstream doesn't have to know about NxxxXXXX codes.
# --------------------------------------------------------------------------- #
BASELINE_VAR_MAP: dict[str, dict] = {
    # Biochemistry / hematology — DU4800
    "wbc_thousands_per_mm3": {
        "source": "DU4800",
        "raw": "N1LB0529",
        "label": "White blood cells (thousands/mm3)",
        "decimals": 1,   # codebook says XX.X
    },
    "hemoglobin_g_per_dl": {
        "source": "DU4800",
        "raw": "N1LB0247",
        "label": "Hemoglobin (g/100ml)",
        "decimals": 1,   # codebook says XXX.X
    },
    # Physical exam — DU4233
    "pulse_rate_bpm": {
        "source": "DU4233",
        "raw": "N1ME0225",
        "label": "Pulse (bpm)",
        "decimals": 0,
    },
    # FFQ — DU4701 (times/week at baseline)
    "ffq_fruit_veg_all": {
        "source": "DU4701",
        "raw": "N1FF0245",
        "label": "Fruits and vegetables (all kinds) freq",
        "decimals": 0,
    },
    "ffq_fruit_veg_vitA": {
        "source": "DU4701",
        "raw": "N1FF0249",
        "label": "Fruits and vegetables rich in vitamin A",
        "decimals": 0,
    },
    "ffq_fruit_veg_vitC": {
        "source": "DU4701",
        "raw": "N1FF0253",
        "label": "Fruits and vegetables rich in vitamin C",
        "decimals": 0,
    },
}

# Identifier column. NHANES I uses SEQN (1-5), NHEFS follow-up uses SEQNUM.
ID_BASELINE = "SEQN"
ID_FOLLOWUP = "SEQNUM"


# --------------------------------------------------------------------------- #
# Helpers
# --------------------------------------------------------------------------- #
def find_sas(du_id: str) -> Path:
    return NHANES_I / "sas" / f"{du_id}.sas"


def find_data(du_id: str) -> Path:
    return NHANES_I / "data" / f"{du_id}.txt"


def find_nhefs_wave_files(wave_dir: Path, kind: str) -> tuple[Path, Path]:
    """
    Given a wave dir (e.g. 04_1992) and a `kind` ("intv"/"mort"/"vitl"),
    return (labels_file, data_file) using NCHS's erratic naming.
    """
    candidates_labels = sorted(wave_dir.glob(f"{kind}*.inputs.labels.txt"))
    if not candidates_labels:
        candidates_labels = sorted(wave_dir.glob(f"*{kind}*.inputs.labels.txt"))
    if not candidates_labels:
        raise FileNotFoundError(f"No {kind} labels file in {wave_dir}")
    labels = candidates_labels[0]

    # Data file naming: N82int.txt, n86int.txt, n87int.txt, N92int.txt, N92mort.txt, n92vitl.txt
    # Let's just search for *.txt files that aren't labels and whose name contains `kind`.
    candidates_data = [
        p for p in wave_dir.glob("*.txt")
        if kind in p.name.lower() and "labels" not in p.name.lower()
    ]
    if not candidates_data:
        raise FileNotFoundError(f"No {kind} data file in {wave_dir}")
    return labels, candidates_data[0]


# --------------------------------------------------------------------------- #
# Wave-level converters
# --------------------------------------------------------------------------- #
def harmonize_nhanesI_file(du_id: str, columns_wanted: list[str]) -> pd.DataFrame:
    sas_path = find_sas(du_id)
    data_path = find_data(du_id)
    schema = parse_sas_script(sas_path)
    usecols = [ID_BASELINE] + columns_wanted
    df = read_fixed_width(data_path, schema, usecols=usecols)
    df = df.rename(columns={ID_BASELINE: "seqn"})
    return df


FOLLOWUP_ID_NAMES = ["SEQNUM", "SEQNUM1", "SEQNO", "HANESEQ", "SEQN"]

def harmonize_nhefs_wave(wave_dir: Path, kind: str) -> pd.DataFrame:
    labels_path, data_path = find_nhefs_wave_files(wave_dir, kind)
    schema = parse_sas_script(labels_path)
    df = read_fixed_width(data_path, schema)
    # Normalize the ID column — different waves use different names
    for id_name in FOLLOWUP_ID_NAMES:
        if id_name in df.columns:
            df = df.rename(columns={id_name: "seqn"})
            df["seqn"] = pd.to_numeric(df["seqn"], errors="coerce").astype("Int64")
            break
    return df


# --------------------------------------------------------------------------- #
# Main driver
# --------------------------------------------------------------------------- #
def build_baseline() -> pd.DataFrame:
    """
    Build a baseline wide table keyed on seqn with columns for:
      wbc, hemoglobin, pulse_rate, ffq fruit/veg frequencies.
    """
    by_source: dict[str, list[str]] = {}
    for canonical, info in BASELINE_VAR_MAP.items():
        by_source.setdefault(info["source"], []).append(info["raw"])

    pieces: list[pd.DataFrame] = []
    rename_map: dict[str, str] = {}
    decimals_map: dict[str, int] = {}
    for canonical, info in BASELINE_VAR_MAP.items():
        rename_map[info["raw"]] = canonical
        decimals_map[canonical] = info.get("decimals", 0)

    for du_id, raw_cols in by_source.items():
        print(f"  Reading {du_id} ({len(raw_cols)} cols)...")
        df = harmonize_nhanesI_file(du_id, raw_cols)
        df = df.rename(columns=rename_map)
        pieces.append(df)

    # Outer-merge all pieces on seqn
    out = pieces[0]
    for p in pieces[1:]:
        out = out.merge(p, on="seqn", how="outer")

    # NHANES I sentinel values → NaN
    # Codebook convention: fields filled with 8s or 9s mean "not done" or
    # "not applicable". For a 3-digit field: 888; for 4-digit: 8888; etc.
    # We detect them by checking the raw integer before decimal scaling.
    SENTINELS = {777, 7777, 77777, 888, 8888, 88888, 9999, 99999}
    for canonical in decimals_map:
        if canonical not in out.columns:
            continue
        raw = out[canonical]
        out[canonical] = raw.where(~raw.isin(SENTINELS))

    # Apply decimal scaling from the canonical map — even though parse_sas_script
    # defaulted to 0 for Grammar A, the NHANES I codebooks encode decimals in the
    # label itself ("XX.X", "XXX.X"). We honor BASELINE_VAR_MAP explicitly.
    for canonical, decimals in decimals_map.items():
        if canonical in out.columns and decimals > 0:
            out[canonical] = out[canonical] / (10 ** decimals)

    out["seqn"] = pd.to_numeric(out["seqn"], errors="coerce").astype("Int64")
    return out


def write_manifest(output_dir: Path, produced: dict) -> None:
    lines = [
        "# NHEFS Full Harmonization Manifest",
        "",
        f"Generated: {datetime.utcnow().isoformat()}Z",
        "Source: CDC NHANES I (1971-75) + NHEFS public-use follow-up (1982-92)",
        "",
        "## Files produced",
        "",
    ]
    for fname, meta in produced.items():
        lines.append(f"- **{fname}** — {meta['rows']:,} rows × {meta['cols']} cols")
        if meta.get("note"):
            lines.append(f"  - {meta['note']}")
    lines += [
        "",
        "## Known limitations",
        "",
        "- **Folate intake is NOT in the NHANES I public release.**",
        "  DU4703 (Nutrient Composition) carries only calories, protein, fat,",
        "  carbs, Ca, P, Fe, Na, K, Vit A, thiamine, riboflavin, niacin, Vit C.",
        "  Bazzano 2002 folate→stroke (T2) derived folate values by externally",
        "  matching NHANES I food codes to a USDA SR database. That step is",
        "  out of scope. T2 remains `requires_external_folate_db: true`.",
        "- WBC (N1LB0529) and pulse rate (N1ME0225) ARE in the public release.",
        "  Gillum 1993 WBC→CHD (T12) is therefore replicable from these files.",
        "- Fruit/veg FFQ totals (N1FF0245/0249/0253) ARE in the public release.",
        "  Bazzano 2002 fruit/veg→CVD (T11) is replicable using these columns.",
        "",
        "## Canonical column map (baseline)",
        "",
    ]
    for canonical, info in BASELINE_VAR_MAP.items():
        lines.append(
            f"- `{canonical}` ← `{info['source']}:{info['raw']}` — {info['label']}"
        )
    (output_dir / "_MANIFEST.md").write_text("\n".join(lines) + "\n")


def main() -> int:
    p = argparse.ArgumentParser()
    p.add_argument("--dry-run", action="store_true",
                   help="Parse schemas and list what would be produced; don't write")
    p.add_argument("--only", choices=["baseline", "followup", "mortality", "all"],
                   default="all")
    args = p.parse_args()

    if not NHANES_I.exists():
        print(f"ERROR: {NHANES_I} not found", file=sys.stderr)
        return 2
    if not NHEFS_FU.exists():
        print(f"ERROR: {NHEFS_FU} not found", file=sys.stderr)
        return 2

    OUTPUT_ROOT.mkdir(parents=True, exist_ok=True)
    produced: dict[str, dict] = {}

    # ---------------- Baseline ----------------
    if args.only in ("baseline", "all"):
        print("\n== Baseline (NHANES I 1971-75) ==")
        baseline = build_baseline()
        print(f"  Baseline shape: {baseline.shape}")
        if not args.dry_run:
            out_path = OUTPUT_ROOT / "baseline.parquet"
            baseline.to_parquet(out_path, index=False)
            produced["baseline.parquet"] = {
                "rows": len(baseline),
                "cols": baseline.shape[1],
                "note": "DU4081+DU4233+DU4701+DU4800 — no folate",
            }

    # ---------------- Follow-up interview waves ----------------
    if args.only in ("followup", "all"):
        waves = [
            ("01_1982-84", "int",  "followup_1982.parquet"),
            ("02_1986",    "int",  "followup_1986.parquet"),
            ("03_1987",    "int",  "followup_1987.parquet"),
            ("04_1992",    "int",  "followup_1992.parquet"),
        ]
        for wave_sub, kind, out_name in waves:
            print(f"\n== Follow-up {wave_sub} ==")
            wave_dir = NHEFS_FU / wave_sub
            try:
                df = harmonize_nhefs_wave(wave_dir, kind)
            except Exception as e:
                print(f"  SKIP {wave_sub}: {e}")
                continue
            print(f"  Wave shape: {df.shape}")
            if not args.dry_run:
                out_path = OUTPUT_ROOT / out_name
                df.to_parquet(out_path, index=False)
                produced[out_name] = {"rows": len(df), "cols": df.shape[1]}

    # ---------------- Mortality & vital status ----------------
    if args.only in ("mortality", "all"):
        print("\n== NHEFS 1992 Mortality ==")
        try:
            mort = harmonize_nhefs_wave(NHEFS_FU / "04_1992", "mort")
            print(f"  Mortality shape: {mort.shape}")
            if not args.dry_run:
                mort.to_parquet(OUTPUT_ROOT / "mortality.parquet", index=False)
                produced["mortality.parquet"] = {
                    "rows": len(mort), "cols": mort.shape[1],
                    "note": "Decedents only (death certificate data)",
                }
        except Exception as e:
            print(f"  SKIP mortality: {e}")

        print("\n== NHEFS 1992 Vital & Tracking Status ==")
        try:
            vitl = harmonize_nhefs_wave(NHEFS_FU / "04_1992", "vitl")
            print(f"  Vital shape: {vitl.shape}")
            if not args.dry_run:
                vitl.to_parquet(OUTPUT_ROOT / "vital_status.parquet", index=False)
                produced["vital_status.parquet"] = {
                    "rows": len(vitl), "cols": vitl.shape[1],
                    "note": "All traced cohort members (used for T11/T12 at-risk definition)",
                }
        except Exception as e:
            print(f"  SKIP vital status: {e}")

    # ---------------- Schema JSON ----------------
    if not args.dry_run and produced:
        schema_json = {
            "id_column": "seqn",
            "baseline_variables": BASELINE_VAR_MAP,
            "notes": {
                "folate": "Not in NHANES I public release. T2 requires "
                          "external USDA food-code → folate mapping.",
                "id_harmonization": "Baseline SEQN and follow-up SEQNUM both "
                                    "renamed to 'seqn' for merging.",
            },
            "files_produced": produced,
        }
        (OUTPUT_ROOT / "schema.json").write_text(
            json.dumps(schema_json, indent=2) + "\n"
        )
        write_manifest(OUTPUT_ROOT, produced)
        print(f"\n✓ Wrote {len(produced)} files under {OUTPUT_ROOT}")

    if args.dry_run:
        print("\n(dry-run: no files written)")

    return 0


if __name__ == "__main__":
    sys.exit(main())
