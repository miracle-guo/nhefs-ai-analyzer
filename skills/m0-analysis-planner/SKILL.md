# M0 — Analysis Planner (Workflow Orchestration)

> **Triggers**: Auto-triggered (not user-invocable). Manages the analysis plan whenever NHEFS analysis is in progress.

## Purpose
M0 is the central orchestration skill for the NHEFS Causal Inference Analysis Agent. It generates, updates, and maintains the **Analysis Plan** — the single source of truth for what the agent should do, what has been done, and what the user has approved. M0 does NOT perform any data analysis itself.

## Skill Metadata
- **Type**: Workflow Orchestration (Type 3)
- **user-invocable**: false (auto-triggered via CLAUDE.md global rules)
- **Output**: `workspace/analysis_plan.json` in project directory

## When to Trigger
M0 is triggered automatically in four situations:

1. **Session start**: User provides a research question and no `workspace/analysis_plan.json` exists → Generate initial plan
2. **After executor completion**: Any M1–M7 skill finishes execution → Update step status, determine next action
3. **User modification feedback**: User does NOT confirm current output or requests changes → Update plan before proceeding
4. **Pre-execution check**: Before any executor skill runs → Read plan to ensure correct step order

## Analysis Plan Data Structure

```json
{
  "version": 1,
  "session_mode": "agent",
  "research_question": "Does smoking cessation between 1971-75 and 1982 cause weight gain?",
  "created_at": "2026-03-16T10:00:00Z",
  "updated_at": "2026-03-16T12:30:00Z",
  "phases": [
    {
      "id": "phase_1",
      "title": "Data Preparation",
      "status": "in_progress",
      "tasks": [
        {
          "id": "task_1_1",
          "title": "Variable Recommendation",
          "status": "committed",
          "module_id": "M1",
          "steps": [
            {
              "id": "step_1_1_1",
              "type": "variable_recommendation",
              "status": "committed",
              "config": {
                "research_question": "How do trace mineral intake patterns relate to ADL disability in adults over 60?"
              },
              "branch_group_id": null,
              "input_snapshot_id": null,
              "output_snapshot_id": "snap_001",
              "generated_code": null,
              "user_note": null
            }
          ]
        },
        {
          "id": "task_1_2",
          "title": "Data Harmonization",
          "status": "executing",
          "module_id": "M2",
          "steps": [
            {
              "id": "step_1_2_1",
              "type": "cross_wave_merge",
              "status": "executing",
              "config": {
                "datasets": ["NHEFS_vital", "NHANES_I_anthropometry", "NHEFS_1982_interview"],
                "wave": "f1_1982",
                "merge_key": "seqn"
              },
              "branch_group_id": null,
              "input_snapshot_id": "snap_001",
              "output_snapshot_id": null,
              "generated_code": "workspace/artifacts/m2_20260316_1200.py",
              "user_note": null
            }
          ]
        }
      ]
    }
  ],
  "golden_path": ["step_1_1_1"],
  "plan_versions": [
    {
      "version": 1,
      "timestamp": "2026-03-16T10:00:00Z",
      "trigger": "initial_generation",
      "change_summary": "Initial plan generated from research question"
    }
  ]
}
```

**Branch Groups**: Steps within the same task can share a `branch_group_id` to indicate they are parallel alternatives. All steps in a branch group share the same `input_snapshot_id`. After execution, the user compares results and commits one (or more) while discarding the rest.

## Process

### Step 0: Offer Web Dashboard

**When**: A new analysis session begins (user provides a research question and no `workspace/analysis_plan.json` exists yet). Run this step **before** generating the initial plan.

**Flow**:

1. Ask the user:
   > "Would you like to open the web dashboard to track analysis progress and artifacts in real-time?"

2. **If the user says yes**:
   ```bash
   # Launch the HTTP server in the background
   bash web/serve.sh &

   # Wait briefly for the server to start
   sleep 1

   # Open the dashboard in the default browser (macOS)
   open http://localhost:8765/web/dashboard.html
   # On Linux, use: xdg-open http://localhost:8765/web/dashboard.html
   ```
   After running, confirm to the user:
   > "The web dashboard is now open at http://localhost:8765/web/dashboard.html. It will update automatically as the analysis progresses. Let's continue with the analysis."

   If the server or browser fails to launch, fall through to the "no" path below.

3. **If the user says no, or the launch fails**:
   Print the following workspace overview and continue:
   > "No problem. All analysis outputs are saved under `workspace/` with this structure:
   > - `workspace/analysis_plan.json` — the live analysis plan (updated after each step)
   > - `workspace/decision_log.jsonl` — append-only log of every decision and event
   > - `workspace/artifacts/{step_id}/` — generated code, data snapshots, and results for each step
   > - `workspace/plan_versions/` — immutable snapshots of each plan version
   >
   > You can open the dashboard anytime later by running `bash web/serve.sh` and visiting http://localhost:8765/web/dashboard.html."

Then proceed to Step 1.

### Step 1: Generate Initial Plan

When the user states a research question and no `workspace/analysis_plan.json` exists:

```python
import json
from datetime import datetime

def generate_initial_plan(research_question: str) -> dict:
    """Generate a default analysis plan from a research question."""
    now = datetime.utcnow().isoformat() + "Z"

    plan = {
        "version": 1,
        "research_question": research_question,
        "created_at": now,
        "updated_at": now,
        "phases": [
            {
                "id": "phase_1",
                "title": "Data Preparation",
                "status": "proposed",
                "tasks": [
                    make_task("task_1_1", "Variable Recommendation", "M1"),
                    make_task("task_1_2", "Data Harmonization", "M2"),
                    make_task("task_1_3", "Missing Data Diagnostics", "M3"),
                    make_task("task_1_4", "Preprocessing", "M4"),
                ]
            },
            {
                "id": "phase_2",
                "title": "Analysis",
                "status": "proposed",
                "tasks": [
                    make_task("task_2_1", "Statistical Modeling", "M5"),
                ]
            },
        ],
        "golden_path": [],
        "plan_versions": [{
            "version": 1,
            "timestamp": now,
            "trigger": "initial_generation",
            "change_summary": "Initial plan generated from research question",
        }],
    }

    # Write plan
    with open("workspace/analysis_plan.json", "w") as f:
        json.dump(plan, f, indent=2)

    # Save version snapshot
    with open(f"plan_versions/v{plan['version']}.json", "w") as f:
        json.dump(plan, f, indent=2)

    print(f"=== Analysis Plan Generated (v{plan['version']}) ===")
    print(f"Research Question: {research_question}")
    print(f"Phases: {len(plan['phases'])}")
    for phase in plan["phases"]:
        print(f"  {phase['id']}: {phase['title']}")
        for task in phase["tasks"]:
            print(f"    {task['id']}: {task['title']} ({task['module_id']})")

    return plan


def make_task(task_id: str, title: str, module_id: str) -> dict:
    """Create a task stub with a single proposed step."""
    return {
        "id": task_id,
        "title": title,
        "status": "proposed",
        "module_id": module_id,
        "steps": [{
            "id": f"{task_id}_step1",
            "type": f"{module_id.lower()}_default",
            "status": "proposed",
            "config": {},
            "input_snapshot_id": None,
            "output_snapshot_id": None,
            "generated_code": None,
            "user_note": None,
        }],
    }
```

### Step 2: Read Current Plan

Before any executor skill runs, read the plan to determine the correct action:

```python
def read_plan() -> dict:
    """Read the current analysis plan."""
    try:
        with open("workspace/analysis_plan.json", "r") as f:
            return json.load(f)
    except FileNotFoundError:
        return None


def get_next_step(plan: dict) -> dict | None:
    """Find the next step to execute in the plan."""
    for phase in plan["phases"]:
        for task in phase["tasks"]:
            for step in task["steps"]:
                if step["status"] == "proposed":
                    return {
                        "phase": phase,
                        "task": task,
                        "step": step,
                    }
    return None  # All steps completed
```

### Step 3: Update Plan — Type A (Automatic Status Progression)

Status transitions that happen automatically without user consent:

```python
def update_step_status(plan: dict, step_id: str, new_status: str,
                       output_snapshot_id: str = None,
                       generated_code: str = None) -> dict:
    """
    Type A update: automatic status progression.
    Valid transitions: proposed → executing → awaiting_confirmation → committed (or → discarded)
    """
    valid_transitions = {
        "proposed": ["executing"],
        "executing": ["awaiting_confirmation", "discarded"],
        "awaiting_confirmation": ["committed", "discarded", "executing"],
        "committed": ["superseded"],
    }

    for phase in plan["phases"]:
        for task in phase["tasks"]:
            for step in task["steps"]:
                if step["id"] == step_id:
                    current = step["status"]
                    if new_status not in valid_transitions.get(current, []):
                        print(f"  WARNING: Invalid transition {current} → {new_status}")
                        return plan

                    step["status"] = new_status
                    if output_snapshot_id:
                        step["output_snapshot_id"] = output_snapshot_id
                    if generated_code:
                        step["generated_code"] = generated_code

                    # Update golden path
                    if new_status == "committed" and step_id not in plan["golden_path"]:
                        plan["golden_path"].append(step_id)
                    elif new_status in ("discarded", "superseded") and step_id in plan["golden_path"]:
                        plan["golden_path"].remove(step_id)

                    # Update task status
                    step_statuses = [s["status"] for s in task["steps"]]
                    if all(s in ("committed", "discarded") for s in step_statuses):
                        task["status"] = "committed"
                    elif any(s == "executing" for s in step_statuses):
                        task["status"] = "executing"

                    plan["updated_at"] = datetime.utcnow().isoformat() + "Z"
                    _save_plan(plan)
                    print(f"  Step {step_id}: {current} → {new_status}")
                    return plan

    print(f"  WARNING: Step {step_id} not found in plan")
    return plan
```

### Step 4: Update Plan — Type B (Structural Changes Requiring Consent)

Structural changes that require user approval:

```python
def propose_plan_change(plan: dict, change_type: str, change_details: dict) -> dict:
    """
    Type B update: structural change proposal.
    Shows proposal card to user and waits for confirmation.

    change_type: "add_task", "remove_task", "reorder", "add_phase", "modify_step"
    """
    proposal = {
        "change_type": change_type,
        "details": change_details,
        "status": "pending_approval",
    }

    # Present proposal to user
    print(f"\n{'='*50}")
    print(f"  PLAN CHANGE PROPOSAL")
    print(f"{'='*50}")
    print(f"  Type: {change_type}")

    if change_type == "add_task":
        print(f"  Add task: {change_details['title']} ({change_details['module_id']})")
        print(f"  After: {change_details.get('after_task_id', 'end')}")
    elif change_type == "reorder":
        print(f"  New order: {change_details['new_order']}")
    elif change_type == "remove_task":
        print(f"  Remove: {change_details['task_id']}")

    print(f"\n  Approve this change? [Present to user for confirmation]")
    print(f"{'='*50}")

    return proposal


def apply_plan_change(plan: dict, change_type: str, change_details: dict) -> dict:
    """Apply an approved structural change to the plan."""
    plan["version"] += 1
    now = datetime.utcnow().isoformat() + "Z"

    if change_type == "add_task":
        phase_id = change_details.get("phase_id", plan["phases"][0]["id"])
        for phase in plan["phases"]:
            if phase["id"] == phase_id:
                new_task = make_task(
                    change_details["task_id"],
                    change_details["title"],
                    change_details["module_id"],
                )
                phase["tasks"].append(new_task)
                break

    elif change_type == "reorder":
        phase_id = change_details["phase_id"]
        new_order = change_details["new_order"]  # list of task_ids
        for phase in plan["phases"]:
            if phase["id"] == phase_id:
                task_map = {t["id"]: t for t in phase["tasks"]}
                phase["tasks"] = [task_map[tid] for tid in new_order if tid in task_map]
                break

    # Record version
    plan["plan_versions"].append({
        "version": plan["version"],
        "timestamp": now,
        "trigger": f"user_approved_{change_type}",
        "change_summary": json.dumps(change_details),
    })

    plan["updated_at"] = now
    _save_plan(plan)

    # Save version snapshot
    with open(f"plan_versions/v{plan['version']}.json", "w") as f:
        json.dump(plan, f, indent=2)

    print(f"  Plan updated to v{plan['version']}")
    return plan
```

### Step 4b: Handle User Feedback on Current Step

When a step is in `awaiting_confirmation` status and the user provides feedback (not a confirm signal):

1. Mark the current step as `superseded`
2. Create a new step under the same task with status `executing`
3. Copy the config from the superseded step, incorporating user feedback
4. Execute the new step
5. Present results and return to `awaiting_confirmation`

```python
def handle_step_feedback(plan: dict, step_id: str, user_feedback: str) -> dict:
    """Handle user feedback on a step awaiting confirmation."""
    for phase in plan["phases"]:
        for task in phase["tasks"]:
            for i, step in enumerate(task["steps"]):
                if step["id"] == step_id and step["status"] == "awaiting_confirmation":
                    # Mark current step as superseded
                    step["status"] = "superseded"
                    if step["id"] in plan["golden_path"]:
                        plan["golden_path"].remove(step["id"])

                    # Create new step
                    new_step_id = f"{step['id']}_rev{len(task['steps'])}"
                    new_step = {
                        "id": new_step_id,
                        "type": step["type"],
                        "status": "executing",
                        "config": {**step["config"], "user_feedback": user_feedback},
                        "input_snapshot_id": step["input_snapshot_id"],
                        "output_snapshot_id": None,
                        "generated_code": None,
                        "user_note": user_feedback,
                    }
                    task["steps"].append(new_step)

                    plan["updated_at"] = datetime.utcnow().isoformat() + "Z"
                    _save_plan(plan)
                    print(f"  Step {step_id} superseded. New step {new_step_id} created with feedback.")
                    return plan, new_step_id

    print(f"  WARNING: Step {step_id} not found or not awaiting_confirmation")
    return plan, None
```

### Step 5: Plan Display

Present the current plan state to the user:

```python
def display_plan(plan: dict) -> None:
    """Display the current analysis plan in a readable format."""
    print(f"\n{'='*60}")
    print(f"  ANALYSIS PLAN (v{plan['version']})")
    print(f"{'='*60}")
    print(f"  Research Question: {plan['research_question']}")
    print(f"  Last Updated: {plan['updated_at']}")

    status_icons = {
        "proposed": "○",
        "executing": "◐",
        "awaiting_confirmation": "◑",
        "committed": "●",
        "discarded": "✗",
        "superseded": "↻",
    }

    for phase in plan["phases"]:
        icon = status_icons.get(phase["status"], "?")
        print(f"\n  {icon} Phase: {phase['title']}")
        for task in phase["tasks"]:
            t_icon = status_icons.get(task["status"], "?")
            print(f"    {t_icon} {task['id']}: {task['title']} [{task['module_id']}]")
            for step in task["steps"]:
                s_icon = status_icons.get(step["status"], "?")
                in_gp = "★" if step["id"] in plan["golden_path"] else " "
                print(f"      {s_icon}{in_gp} {step['id']}: {step['type']} ({step['status']})")

    print(f"\n  Golden Path: {' → '.join(plan['golden_path']) or '(empty)'}")
    print(f"{'='*60}")
```

### Helper: Save Plan

```python
def _save_plan(plan: dict) -> None:
    """Persist the plan to analysis_plan.json."""
    with open("workspace/analysis_plan.json", "w") as f:
        json.dump(plan, f, indent=2)
```

## CLAUDE.md Integration Rules

The following rules must be added to CLAUDE.md to enable M0's auto-trigger behavior:

```
Rule 1: When the user states a research question and no analysis_plan.json exists,
         generate an initial Analysis Plan using M0 before proceeding to M1.

Rule 2: After any executor skill (M1–M7) completes, update the plan step status
         (executing → committed) and determine the next action.

Rule 3: When the user provides modification feedback (does not confirm current output
         or requests changes), update the plan accordingly before proceeding.

Rule 4: Before executing any step, read analysis_plan.json to ensure the correct
         step is being executed in the correct order.

Rule 5: Only steps with status "committed" are included in the golden_path.
         The final pipeline code uses only golden_path steps.
```

## Step Status Lifecycle

```
proposed  ──→  executing  ──→  awaiting_confirmation  ──→  committed  ──→  superseded
                  │
                  └──→  discarded
```

- **proposed**: Plan generated this step, not yet started
- **executing**: Executor skill is running this step
- **awaiting_confirmation**: Executor finished, output presented to user, waiting for user to confirm or provide feedback
- **committed**: User confirmed the output; included in golden path
- **discarded**: User rejected the output; excluded from golden path
- **superseded**: A newer version of this step replaced it

## Update Types

| Type | Trigger | User Consent | Examples |
|------|---------|-------------|----------|
| Type A (Auto) | Executor completion | Not required | proposed→executing, executing→awaiting_confirmation |
| Type A (Confirm) | User confirms | Required | awaiting_confirmation→committed |
| Type B (Structural) | User feedback or agent proposal | Required | Add task, reorder, remove task, modify step config |

## Non-Linear Execution

The plan supports non-linear task ordering. For example, if the user needs multiple rounds of data harmonization:

```
M1 → M2.1 (load vitl + baseline) → M2.2 (merge 1982 interview) → M2.3 (merge mortality) → M3 → M4 → M5
```

Each M2 round creates a new step under the same task, with the previous step's output as input.

### Step 6: Dataset Snapshots

Every committed step should persist its output DataFrame for reproducibility and rollback.

```python
import os
from datetime import datetime

def save_snapshot(df, step_id: str) -> str:
    """Save DataFrame snapshot after a step is committed."""
    os.makedirs("snapshots", exist_ok=True)
    timestamp = datetime.utcnow().strftime("%Y%m%d_%H%M%S")
    filename = f"snapshots/{step_id}_{timestamp}.parquet"
    df.to_parquet(filename, index=False)
    print(f"  Snapshot saved: {filename} ({len(df)} rows, {len(df.columns)} cols)")
    return filename


def load_snapshot(snapshot_id: str):
    """Load a DataFrame from a snapshot file."""
    import pandas as pd
    if snapshot_id and os.path.exists(snapshot_id):
        df = pd.read_parquet(snapshot_id)
        print(f"  Snapshot loaded: {snapshot_id} ({len(df)} rows)")
        return df
    return None
```

**Integration with step lifecycle:**
- When a step transitions to `committed`, call `save_snapshot(df, step_id)` and store the returned path in `step.output_snapshot_id`
- When starting a new step, check the previous step's `output_snapshot_id` and load it as input via `load_snapshot()`
- When a user wants to rollback to a previous step, load that step's snapshot

### Step 8: Multi-Branch Parallel Validation

When the user wants to compare multiple approaches (e.g., different models, different variable sets):

```python
def fork_step(plan: dict, task_id: str, base_step_id: str,
              alternatives: list[dict]) -> dict:
    """
    Create parallel alternative steps from a base step.

    alternatives: list of config dicts, e.g.:
        [{"model": "ols"}, {"model": "nbreg"}, {"model": "logit"}]
    """
    import uuid
    branch_group_id = f"bg_{uuid.uuid4().hex[:8]}"

    for phase in plan["phases"]:
        for task in phase["tasks"]:
            if task["id"] == task_id:
                # Find base step for input_snapshot_id
                base_step = None
                for step in task["steps"]:
                    if step["id"] == base_step_id:
                        base_step = step
                        break

                input_snap = base_step["output_snapshot_id"] if base_step else None

                for i, alt_config in enumerate(alternatives):
                    suffix = chr(ord('a') + i)  # a, b, c, ...
                    new_step = {
                        "id": f"{base_step_id}_{suffix}",
                        "type": base_step["type"] if base_step else "modeling",
                        "status": "proposed",
                        "branch_group_id": branch_group_id,
                        "config": alt_config,
                        "input_snapshot_id": input_snap,
                        "output_snapshot_id": None,
                        "generated_code": None,
                        "user_note": None,
                    }
                    task["steps"].append(new_step)

                plan["updated_at"] = datetime.utcnow().isoformat() + "Z"
                _save_plan(plan)

                print(f"  Created {len(alternatives)} parallel branches (group: {branch_group_id}):")
                for i, alt in enumerate(alternatives):
                    suffix = chr(ord('a') + i)
                    print(f"    {base_step_id}_{suffix}: {alt}")
                return plan

    return plan


def compare_branches(plan: dict, branch_group_id: str) -> None:
    """Display comparison of all steps in a branch group."""
    branches = []
    for phase in plan["phases"]:
        for task in phase["tasks"]:
            for step in task["steps"]:
                if step.get("branch_group_id") == branch_group_id:
                    branches.append(step)

    if not branches:
        print(f"  No branches found for group {branch_group_id}")
        return

    print(f"\n{'='*60}")
    print(f"  Branch Comparison — {branch_group_id}")
    print(f"{'='*60}")
    for step in branches:
        status_icon = {"proposed": "○", "executing": "◐", "awaiting_confirmation": "◑",
                       "committed": "●", "discarded": "✗"}.get(step["status"], "?")
        print(f"  {status_icon} {step['id']}: {step['config']}")
        if step.get("output_snapshot_id"):
            print(f"    Output: {step['output_snapshot_id']}")
    print(f"\n  Select which branch(es) to commit.")
    print(f"{'='*60}")
```

### Step 7: Integrate M7 Action Items into Plan

After M7 validation completes with warnings or failures, M0 creates proposed steps in the plan for each action item:

```python
def integrate_m7_action_items(plan: dict, current_task_id: str, action_items: list) -> dict:
    """Create proposed steps from M7 validation action items."""
    if not action_items:
        return plan

    for phase in plan["phases"]:
        for task in phase["tasks"]:
            if task["id"] == current_task_id:
                for i, item in enumerate(action_items):
                    new_step = {
                        "id": f"{current_task_id}_m7fix_{i+1}",
                        "type": "m7_remediation",
                        "status": "proposed",
                        "config": {
                            "action": item["description"],
                            "severity": item["severity"],
                            "suggested_module": item["suggested_module"],
                        },
                        "input_snapshot_id": None,
                        "output_snapshot_id": None,
                        "generated_code": None,
                        "user_note": None,
                    }
                    task["steps"].append(new_step)

    plan["updated_at"] = datetime.utcnow().isoformat() + "Z"
    _save_plan(plan)

    print(f"\n  M0: Added {len(action_items)} action items to plan as proposed steps.")
    print(f"  User can: commit (execute fix), discard (ignore), or discuss.")
    return plan
```

### Step 10: Agent / Planning Mode Switch

The analysis session supports two modes:

**Agent Mode** (default):
- Executes steps from the plan
- Generates and runs code
- Each step produces output and waits for confirmation
- Normal pipeline flow

**Planning Mode**:
- No code execution
- No step status progression
- Free discussion: compare approaches, review literature, adjust plan structure
- Type B plan changes can be discussed and applied
- Useful when the user is uncertain about methodology

```python
def switch_mode(plan: dict, new_mode: str) -> dict:
    """Switch between 'agent' and 'planning' modes."""
    assert new_mode in ("agent", "planning")
    old_mode = plan.get("session_mode", "agent")
    plan["session_mode"] = new_mode
    plan["updated_at"] = datetime.utcnow().isoformat() + "Z"
    _save_plan(plan)
    print(f"  Mode switched: {old_mode} → {new_mode}")
    if new_mode == "planning":
        print("  Planning mode: No code will be executed. Discuss freely.")
        print("  Say 'continue' or '继续执行' to switch back to Agent mode.")
    else:
        print("  Agent mode: Resuming pipeline execution.")
        display_plan(plan)
    return plan
```

**Mode detection triggers:**
- Switch to Planning: "let's discuss", "我们先讨论一下", "planning mode", "I'm not sure about...", "what if we..."
- Switch to Agent: "continue", "resume", "execute", "继续执行", "开始执行", "agent mode"

## Important Rules
1. **NEVER** execute analysis code — M0 only manages the plan.
2. **ALWAYS** persist plan changes to `workspace/analysis_plan.json` immediately.
3. **ALWAYS** save version snapshots to `plan_versions/` on structural changes.
4. **ALWAYS** present Type B changes as proposals for user approval.
5. Type A status updates happen silently — do not interrupt the user.
6. The golden path is the source of truth for final pipeline generation.
7. Plan versioning is append-only — never delete version history.
8. Support non-linear execution order (multiple rounds of the same module).

## Decision Log Integration

M0 is responsible for maintaining `workspace/decision_log.jsonl`. Every function that modifies
analysis_plan.json MUST also append the corresponding event to the decision log.

### Function → Event mapping
| Function | Event(s) to append | Required payload |
|---|---|---|
| generate_initial_plan() | plan_created | research_question, total_phases, total_steps |
| update_step_status(→executing) | step_started | step_id, module_id, config_summary |
| update_step_status(→committed) | step_committed | step_id, output_summary, variables, validation_results, researcher_note |
| fork_step() | decision_point + branch_created | fork_reason, branch details |
| compare_branches(→commit) | branch_committed | branch_id, rationale, comparison_summary |
| compare_branches(→abandon) | branch_abandoned | branch_id, reason, failure_summary, key_learning |
| rewind_to_step() | rewind | from_step_id, to_step_id, reason |

### Implementation pattern
At the end of each function that modifies the plan:
1. Write updated analysis_plan.json
2. Call DecisionLogger.append() with the appropriate event type and payload
3. Both writes must succeed — if either fails, report the error

### Researcher notes
When the user provides feedback, rationale, or a note during confirmation:
- Extract the note text
- Include it as `researcher_note` in the step_committed event
- Also store it in the step's `user_note` field in analysis_plan.json
This ensures the web interface can display researcher annotations in the detail panel.

## Enhanced Step Schema

Each step now includes additional fields for frontend rendering:

| Field | Type | Purpose | Who writes it |
|---|---|---|---|
| `display_label` | string | Human-readable label for the mindmap node | M0 when creating step |
| `display_sub` | string \| null | Short metadata below label (e.g., "n=18,469") | M0 after step completes |
| `output_summary` | string \| null | 1-2 sentence summary of step output | Executor module; M0 stores |
| `key_result` | object \| null | Structured key metrics from step output | Executor module; M0 stores |
| `validation_summary` | object \| null | Compact M7 result: {pass, warn, fail} | M7; M0 stores |
| `is_rewind_source` | boolean | True if step triggered a rewind | M0 sets on rewind |

## Enhanced Branch Groups

Branch groups now include structured metadata:

```json
{
  "branch_groups": {
    "bg_harm": {
      "fork_step_id": "step_1_2_1",
      "fork_reason": "Multiple harmonization strategies possible",
      "created_at": "2026-03-16T10:20:00Z",
      "branches": {
        "branch_a1": {
          "label": "A1: vitl+baseline+intv82",
          "type": "exploratory",
          "status": "abandoned",
          "resolution_rationale": "DU4091 smoking supplement coverage too low (6,913); used intv82 smoking instead",
          "key_learning": "Physical biomarkers are mediators, not confounders for PA exposure"
        }
      },
      "resolved_at": null,
      "golden_branch_id": null
    }
  }
}
```

## Rewind Support

New function: `rewind_to_step(target_step_id, reason)`

Logic:
1. Identify all steps after `target_step_id` on the current path
2. Mark them as `superseded` (not deleted — preserve for record)
3. Set `target_step_id` as the new active point
4. Emit `rewind` event to decision_log.jsonl
5. Record the abandoned path in branch metadata with full failure context
6. Increment plan version

```python
def rewind_to_step(plan: dict, target_step_id: str, reason: str, logger: 'DecisionLogger') -> dict:
    """Rewind the analysis to a previous step, preserving the abandoned path."""
    from_step_id = None
    superseded_steps = []

    # Find steps to supersede
    found_target = False
    for phase in plan["phases"]:
        for task in phase["tasks"]:
            for step in task["steps"]:
                if step["id"] == target_step_id:
                    found_target = True
                    continue
                if found_target and step["status"] in ("committed", "executing", "awaiting_confirmation"):
                    from_step_id = from_step_id or step["id"]
                    step["status"] = "superseded"
                    step["is_rewind_source"] = True
                    superseded_steps.append(step["id"])
                    if step["id"] in plan["golden_path"]:
                        plan["golden_path"].remove(step["id"])

    # Version bump
    plan["version"] += 1
    now = datetime.utcnow().isoformat() + "Z"
    plan["updated_at"] = now
    plan["plan_versions"].append({
        "version": plan["version"],
        "timestamp": now,
        "trigger": "rewind",
        "trigger_type": "user",
        "change_summary": f"Rewind from {from_step_id} to {target_step_id}: {reason}"
    })

    _save_plan(plan)

    # Log the event
    logger.append(
        event_type="rewind",
        triggered_by="user",
        plan_version=plan["version"],
        step_id=target_step_id,
        from_step_id=from_step_id,
        to_step_id=target_step_id,
        reason=reason,
        preserved_path_summary=f"Superseded steps: {', '.join(superseded_steps)}"
    )

    return plan
```

## Golden Path Tracking

Explicit fields in analysis_plan.json:

```json
{
  "golden_path": ["step_1_1_1", "step_a2_harm", "step_a2b2_model"],
  "golden_path_progress": {
    "total": 6,
    "committed": 3,
    "running": 1,
    "pending": 2
  }
}
```

Update golden_path_progress whenever the golden_path changes:

```python
def update_golden_path_progress(plan: dict) -> dict:
    """Recalculate golden path progress from current step statuses."""
    gp_steps = plan.get("golden_path", [])
    progress = {"total": len(gp_steps), "committed": 0, "running": 0, "pending": 0}
    for phase in plan["phases"]:
        for task in phase["tasks"]:
            for step in task["steps"]:
                if step["id"] in gp_steps:
                    if step["status"] == "committed":
                        progress["committed"] += 1
                    elif step["status"] == "executing":
                        progress["running"] += 1
                    elif step["status"] == "proposed":
                        progress["pending"] += 1
    plan["golden_path_progress"] = progress
    return plan
```

## File Writing Rules

M0 is the **sole writer** of the three live-state files. All writes to `workspace/analysis_plan.json`, `workspace/decision_log.jsonl`, and `workspace/_update_signal.json` **MUST** go through `DecisionLogger`. Direct `open(..., 'w')` on those files is forbidden.

**Allowed M0 calls:**

```python
import sys
sys.path.insert(0, "utils")
from decision_logger import DecisionLogger

dl = DecisionLogger(".")          # project root

# Write or update the plan (always bump version first)
plan["version"] += 1
dl.save_plan(plan)                # atomic write + snapshot + signal refresh

# Append an event to the log
dl.append_event({
    "event_type": "step_committed",   # must be a VALID_EVENT_TYPES value
    "step_id": "step_1_1_1",
    "triggered_by": "user",           # or "auto"
    "payload": {"output_summary": "..."},
})

# Standalone signal refresh (rarely needed — save_plan/append_event do this)
dl._refresh_signal()
```

Or equivalently via the Bash CLI (set `ANALYSIS_PROJECT_ROOT` to the project directory):

```bash
ANALYSIS_PROJECT_ROOT=. python3 utils/decision_logger.py save-plan "$(python3 -c 'import json,sys; print(json.dumps(json.load(open("workspace/analysis_plan.json"))))')"
ANALYSIS_PROJECT_ROOT=. python3 utils/decision_logger.py append-event '{"event_type":"step_committed","step_id":"step_1_1_1","triggered_by":"user"}'
ANALYSIS_PROJECT_ROOT=. python3 utils/decision_logger.py refresh-signal
```

**Forbidden for M0:**
- `open("workspace/analysis_plan.json", "w")` or any direct write to the three live-state files
- `dl.make_step_dir()` or `dl.write_artifact()` on behalf of executors — executors own their own output directories

**Executor Output Contract (what M1–M9 return to M0):**
After each executor finishes, M0 receives a dict and uses it to update the plan and log:
```python
# Executor returns:
contract = {
    "status": "committed",                    # or "failed"
    "output_summary": "...",                  # narrative past-tense description
    "key_result": {"n_obs": 14200, ...},      # metric chips for detail panel
    "artifacts": [                            # list of files written
        {"path": "workspace/artifacts/step_1_1_1/m1_vars.json", "type": "config", "label": "Variable list"},
    ],
    "validation_summary": {"checks_run": 12, "passed": 12, "failed": 0, "notes": ""},
    "output_snapshot_id": "workspace/artifacts/step_1_1_1/dataset.parquet",  # or None if no dataset
}
# M0 applies this to the plan step, bumps version, saves, and appends event:
step["status"] = contract["status"]
step["output_summary"] = contract["output_summary"]
step["key_result"] = contract["key_result"]
step["artifacts"] = contract["artifacts"]
step["validation_summary"] = contract["validation_summary"]
step["output_snapshot_id"] = contract["output_snapshot_id"]
plan["version"] += 1
dl.save_plan(plan)
dl.append_event({"event_type": "step_committed", "step_id": step["id"], "triggered_by": "auto"})
```
