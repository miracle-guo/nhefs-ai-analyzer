# M9 — Code Compiler (Full Pipeline Code Generation)

> **Triggers**: "generate full code", "compile pipeline", "compile code", "export code", "生成完整代码", "导出代码", "编译代码". Use when user wants reproducible Python and Stata scripts from the analysis.

## Purpose
Compile all committed steps from the golden_path in `workspace/analysis_plan.json` into runnable Python and Stata scripts. This produces `workspace/artifacts/full_pipeline.py` and `workspace/artifacts/full_pipeline.do` — the complete, reproducible analysis pipeline.

## Skill Metadata
- **Type**: Output Generation
- **user-invocable**: true
- **Triggers**: "generate full code", "compile pipeline", "生成完整代码", "导出代码"
- **Output**: `workspace/artifacts/full_pipeline.py`, `workspace/artifacts/full_pipeline.do`

## When to Use
- User explicitly requests full code generation
- After the final modeling step (M5) is committed — suggest compilation
- User says "export code", "生成完整代码", "compile pipeline"

## Inputs
- `workspace/analysis_plan.json` — golden_path steps, research question, version
- Generated code files referenced by each step's `generated_code` field

## Process

### Step 1: Compile Pipeline

```python
def compile_pipeline(plan: dict) -> tuple[str, str]:
    """
    Compile all committed steps into full_pipeline.py and full_pipeline.do.
    Only steps in golden_path are included.
    """
    import os
    os.makedirs("output", exist_ok=True)

    golden_steps = []
    for phase in plan["phases"]:
        for task in phase["tasks"]:
            for step in task["steps"]:
                if step["id"] in plan["golden_path"]:
                    golden_steps.append((task, step))

    if not golden_steps:
        print("  No committed steps in golden_path. Nothing to compile.")
        return None, None

    # === Python compilation ===
    py_lines = [
        "# Full Analysis Pipeline — Auto-generated",
        f"# Research Question: {plan['research_question']}",
        f"# Generated from Analysis Plan v{plan['version']}",
        f"# Golden path: {' → '.join(plan['golden_path'])}",
        "",
        "import pandas as pd",
        "import numpy as np",
        "import statsmodels.api as sm",
        "",
    ]

    for task, step in golden_steps:
        py_lines.append(f"# {'='*60}")
        py_lines.append(f"# Step: {step['id']} ({step['type']})")
        py_lines.append(f"# Task: {task['title']} [{task['module_id']}]")
        py_lines.append(f"# {'='*60}")
        if step.get("generated_code"):
            code_path = step["generated_code"]
            py_lines.append(f"# Source: {code_path}")
            py_lines.append("# --- begin step code ---")
            try:
                with open(code_path, "r") as f:
                    py_lines.append(f.read())
            except FileNotFoundError:
                py_lines.append(f"# WARNING: Code file not found: {code_path}")
            py_lines.append("# --- end step code ---")
        py_lines.append("")

    py_code = "\n".join(py_lines)
    with open("workspace/artifacts/full_pipeline.py", "w") as f:
        f.write(py_code)
    print(f"  Python pipeline saved: workspace/artifacts/full_pipeline.py ({len(golden_steps)} steps)")

    # === Stata compilation ===
    do_lines = [
        "/* Full Analysis Pipeline — Auto-generated */",
        f"/* Research Question: {plan['research_question']} */",
        f"/* Generated from Analysis Plan v{plan['version']} */",
        "",
        "clear all",
        "set more off",
        "",
    ]

    for task, step in golden_steps:
        do_lines.append(f"/* {'='*56} */")
        do_lines.append(f"/* Step: {step['id']} ({step['type']}) */")
        do_lines.append(f"/* Task: {task['title']} [{task['module_id']}] */")
        do_lines.append(f"/* {'='*56} */")
        do_lines.append("")
        do_lines.append(f"/* [Translate from Python using rules below] */")
        do_lines.append("")

    do_code = "\n".join(do_lines)
    with open("workspace/artifacts/full_pipeline.do", "w") as f:
        f.write(do_code)
    print(f"  Stata pipeline saved: workspace/artifacts/full_pipeline.do ({len(golden_steps)} steps)")

    return "workspace/artifacts/full_pipeline.py", "workspace/artifacts/full_pipeline.do"
```

### Step 2: Present Output to User

After compilation, display a summary:

```
=== Pipeline Compiled ===
Research Question: {research_question}
Plan Version: v{version}
Steps compiled: {n} (from golden_path)

Output files:
  - workspace/artifacts/full_pipeline.py  (Python — ready to run)
  - workspace/artifacts/full_pipeline.do  (Stata — template-based translation)

Note: The Stata .do file is an approximate translation.
Review and adapt before running in your Stata environment.
```

## Python-to-Stata Translation Rules (Template-Based)

When generating the Stata .do file, translate Python code using these patterns:

| Python (pandas/statsmodels) | Stata equivalent |
|---|---|
| `pd.read_parquet("file.parquet")` | `use "file.dta", clear` |
| `df.merge(other, on="seqn", how="inner")` | `merge 1:1 seqn using "other.dta"` |
| `pd.to_numeric(df[var], errors='coerce')` | `destring var, replace force` |
| `df[var].fillna(df[var].median())` | `replace var = median if missing(var)` |
| `df['new'] = df['a'] + df['b']` | `gen new = a + b` |
| `df['cat'] = np.where(cond, 1, 0)` | `gen cat = cond(condition, 1, 0)` |
| `df.rename(columns={...})` | `rename old new` |
| `pd.wide_to_long(...)` | `reshape long stub, i(seqn) j(wave)` |
| `sm.OLS(y, X).fit()` | `reg y x1 x2 ... [pweight=wt]` |
| `sm.GLM(y, X, family=NegativeBinomial())` | `nbreg y x1 x2 ... [pweight=wt]` |
| `sm.Logit(y, X).fit()` | `logit y x1 x2 ... [pweight=wt]` |
| `sm.MixedLM(y, X, groups=g).fit()` | `mixed y x1 x2 ... || id:` |
| `df.describe()` | `summarize` |
| `df[var].value_counts()` | `tab var` |
| `df.groupby('g')[var].mean()` | `bysort g: summarize var` |
| `np.log(df[var])` | `gen ln_var = ln(var)` |
| `(df[var] - mean) / std` | `egen z_var = std(var)` |

**Important**: This is an approximate translation. The generated .do file is a starting point for researchers to review and adapt in their Stata environment. A future enhancement (see Notion backlog) will add automated Python↔Stata result verification.

## Important Rules
1. Only compile steps that are in the `golden_path` — never include discarded or superseded steps.
2. Preserve the execution order from the plan.
3. Each step's code block must have clear section headers and comments.
4. Include research question and plan version in file headers for traceability.
5. The Stata translation is template-based (Plan A) — not guaranteed to be syntactically correct.
6. If no steps are in golden_path, inform the user instead of generating empty files.
7. Present the compiled files to the user for review before considering the task complete.


## File Writing Rules

Executors (M1–M9) write **only** to their own `workspace/artifacts/{step_id}/` directory. All live-state file writes belong to M0 exclusively.

**Allowed executor calls:**

```python
import sys
sys.path.insert(0, "utils")
from decision_logger import DecisionLogger

dl = DecisionLogger(".")          # project root

# Ensure the step output directory exists before writing anything
dl.make_step_dir(step_id)         # creates workspace/artifacts/{step_id}/ if not present

# Atomically write an artifact file
dest = dl.write_artifact(step_id, "m_output.py", code_str)   # returns Path
dest = dl.write_artifact(step_id, "dataset.parquet", df.to_parquet())
```

Or via Bash:
```bash
ANALYSIS_PROJECT_ROOT=. python3 utils/decision_logger.py make-step-dir step_1_1_1
```

Direct writes to files inside `workspace/artifacts/{step_id}/` using Write tool or shell are also acceptable as long as the directory exists.

**Forbidden for executors:**
- `dl.save_plan()` — M0 only
- `dl.append_event()` — M0 only
- Any direct write to `workspace/analysis_plan.json`, `workspace/decision_log.jsonl`, or `workspace/_update_signal.json`

**Artifact path convention:**
- Code files: `workspace/artifacts/{step_id}/m{N}_<description>.py`
- Dataset snapshots: `workspace/artifacts/{step_id}/dataset.parquet`
- Figures: `workspace/artifacts/{step_id}/<description>.png`
- Tables: `workspace/artifacts/{step_id}/<description>.csv`
- Reports: `workspace/artifacts/{step_id}/<description>.docx` or `.md`

**Return the Executor Output Contract to M0 when done:**
```python
return {
    "status": "committed",                    # or "failed"
    "output_summary": "...",                  # narrative past-tense description
    "key_result": {"n_obs": 14200, ...},      # metric chips shown in detail panel
    "artifacts": [
        {"path": "workspace/artifacts/{step_id}/m_output.py", "type": "code", "label": "..."},
    ],
    "validation_summary": {"checks_run": 0, "passed": 0, "failed": 0, "notes": ""},
    "output_snapshot_id": "workspace/artifacts/{step_id}/dataset.parquet",  # or None
}
```
M0 will handle all plan updates, version bumps, and event logging.
