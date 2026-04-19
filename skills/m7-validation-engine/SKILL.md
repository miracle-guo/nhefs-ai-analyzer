# M7 — Validation Engine

> **Triggers**: Auto-triggered after every code execution. Also: "validate", "check data", "验证", "数据检查". Runs automatically — rarely needs manual invocation.

## Purpose
Automated sanity checks after every code execution step. Two tiers: **basic checks** (run after M2/M3/M4) and **modeling checks** (run only after M5).

## When to Use
M7 is **automatically invoked** after any module (M2–M5) executes Python code. You should never need to call it manually — the calling module triggers it.

## Inputs
- `df` — the pandas DataFrame produced by the preceding module's code
- `context` — a dict describing what just ran:
  ```python
  {
      "module": "M2",            # which module produced this data
      "merge_key": "seqn",       # primary key used (if merge)
      "key_vars": ["wt82_71", "qsmk", ...],  # variables the analysis cares about
      "weight_var": None,        # survey weight variable (Phase 2)
      "expected_n": None,        # expected sample size (optional)
  }
  ```

## Basic Checks (M2, M3, M4, M5)

Run all 6 checks below. Each returns `pass`, `warn`, or `fail`.

### Check 1: Duplicate Keys
```python
def check_duplicate_keys(df, key="seqn"):
    n_dup = df.duplicated(subset=[key]).sum()
    if n_dup == 0:
        return "pass", f"No duplicate {key} values"
    else:
        return "fail", f"{n_dup} duplicate {key} values found"
```

### Check 2: Sample Size
```python
def check_sample_size(df):
    n = len(df)
    if n < 30:
        return "fail", f"N={n} — too small for reliable inference"
    elif n < 100:
        return "warn", f"N={n} — small sample, interpret with caution"
    else:
        return "pass", f"N={n}"
```

### Check 3: Missing Rates
```python
def check_missing_rates(df, key_vars):
    issues = []
    for var in key_vars:
        if var not in df.columns:
            issues.append((var, "fail", "variable not found in DataFrame"))
            continue
        miss_rate = df[var].isna().mean()
        if miss_rate > 0.5:
            issues.append((var, "warn", f"{miss_rate:.1%} missing"))
        elif miss_rate > 0:
            issues.append((var, "pass", f"{miss_rate:.1%} missing"))
        else:
            issues.append((var, "pass", "0% missing"))
    has_warn = any(s == "warn" for _, s, _ in issues)
    return ("warn" if has_warn else "pass"), issues
```

### Check 4: Variable Ranges
```python
RANGE_RULES = {
    "age": (25, 100),      # NEXAMAGE at baseline 25-74; at 1982 followup ~35-85
    "bmi": (10, 80),       # bmi_baseline
    "sbp": (70, 260),      # N1ME0228 systolic BP
    "dbp": (30, 160),      # N1ME0231 diastolic BP
    "wt71": (25, 200),     # wt71_kg (baseline weight in kg)
    "wt82": (25, 250),     # wt82 (1982 weight, kg or lbs — check units)
    "wt82_71": (-50, 50),  # weight change outcome (kg)
    "weight": (0, None),   # survey weights must be non-negative
    "cholesterol": (50, 500), # baseline cholesterol (mg/dL)
    "pulse": (30, 200),    # baseline or 1982 pulse
}

def check_variable_ranges(df, key_vars):
    """Check if numeric variables fall within expected NHEFS ranges."""
    issues = []
    for var in key_vars:
        if var not in df.columns:
            continue
        col = df[var].dropna()
        if len(col) == 0:
            continue
        # Match variable to a range rule by substring
        matched_rule = None
        for pattern, (lo, hi) in RANGE_RULES.items():
            if pattern in var.lower():
                matched_rule = (lo, hi)
                break
        if matched_rule is None:
            continue
        lo, hi = matched_rule
        out_of_range = 0
        if lo is not None:
            out_of_range += (col < lo).sum()
        if hi is not None:
            out_of_range += (col > hi).sum()
        if out_of_range > 0:
            pct = out_of_range / len(col)
            issues.append((var, "warn", f"{out_of_range} values ({pct:.1%}) out of range [{lo}, {hi}]"))
        else:
            issues.append((var, "pass", f"all values in range [{lo}, {hi}]"))
    return issues
```

### Check 5: Merge Quality (only if module == "M2" and merge was performed)
```python
def check_merge_quality(merge_indicator, label="merge"):
    """Check _merge column or equivalent indicator."""
    matched = (merge_indicator == "both").sum()
    left_only = (merge_indicator == "left_only").sum()
    right_only = (merge_indicator == "right_only").sum()
    total = len(merge_indicator)
    match_rate = matched / total if total > 0 else 0
    status = "pass" if match_rate >= 0.8 else "warn"
    msg = (f"{label}: {matched} matched, {left_only} left-only, "
           f"{right_only} right-only ({match_rate:.1%} match rate)")
    return status, msg
```

### Check 6: Weight Consistency
```python
def check_weights(df, weight_var):
    if weight_var is None or weight_var not in df.columns:
        return "pass", "No weight variable specified"
    w = df[weight_var]
    n_zero = (w == 0).sum()
    n_missing = w.isna().sum()
    n_negative = (w < 0).sum()
    if n_negative > 0:
        return "fail", f"{n_negative} negative weights"
    if n_zero > 0:
        return "warn", f"{n_zero} zero weights ({n_zero/len(w):.1%}) — these observations will be excluded from weighted analysis"
    if n_missing > 0:
        return "warn", f"{n_missing} missing weights ({n_missing/len(w):.1%})"
    return "pass", f"All {len(w) - n_missing} weights are positive"
```

## Modeling Checks (M5 only)

These run **only** when `context["module"] == "M5"`. They are slightly heavier but still fast (<30 seconds each).

### Check 7: Multicollinearity (VIF)
```python
def check_vif(df, predictors, threshold=10):
    """Variance Inflation Factor for each predictor."""
    from statsmodels.stats.outliers_influence import variance_inflation_factor
    X = df[predictors].dropna()
    if len(X) < len(predictors) + 1:
        return "warn", "Not enough observations for VIF calculation"
    vifs = {}
    for i, col in enumerate(predictors):
        vifs[col] = variance_inflation_factor(X.values, i)
    high_vif = {k: v for k, v in vifs.items() if v > threshold}
    if high_vif:
        return "warn", f"High VIF (>{threshold}): {high_vif}"
    return "pass", f"All VIFs < {threshold}"
```

### Check 8: Outcome Distribution
```python
def check_outcome_distribution(df, outcome_var):
    """Check if count outcomes are overdispersed, if continuous outcomes are roughly normal."""
    col = df[outcome_var].dropna()
    mean_val = col.mean()
    var_val = col.var()
    if col.nunique() <= 10 and col.min() >= 0:
        # Likely a count variable
        ratio = var_val / mean_val if mean_val > 0 else 0
        if ratio > 1.5:
            return "warn", f"Count variable appears overdispersed (var/mean={ratio:.2f}). Consider negative binomial over Poisson."
        return "pass", f"Count distribution OK (var/mean={ratio:.2f})"
    else:
        # Continuous — check skewness
        skew = col.skew()
        if abs(skew) > 2:
            return "warn", f"Skewness={skew:.2f}. Consider log-transform."
        return "pass", f"Distribution OK (skew={skew:.2f})"
```

### Check 9: Model Convergence
```python
def check_model_convergence(result):
    """Check if statsmodels result converged."""
    if hasattr(result, 'mle_retvals') and not result.mle_retvals['converged']:
        return "fail", "Model did NOT converge"
    return "pass", "Model converged"
```

## Output Format

M7 prints a validation report to the console:

```
╔══════════════════════════════════════════════╗
║         M7 Validation Report — M2           ║
╠══════════════════════════════════════════════╣
║ ✓ PASS  Duplicate keys: No duplicate seqn   ║
║ ✓ PASS  Sample size: N=1,247                ║
║ ⚠ WARN  Missing rates: N1GM0378 50.2% missing║
║ ✓ PASS  Variable ranges: all in range       ║
║ ✓ PASS  Merge quality: 82.3% match rate     ║
║ ✓ PASS  Weights: all positive               ║
╠══════════════════════════════════════════════╣
║ Result: 5 PASS, 1 WARN, 0 FAIL             ║
╚══════════════════════════════════════════════╝
```

If any check returns `fail`, M7 halts the pipeline and asks the user how to proceed.
If checks return only `pass` and `warn`, M7 displays the report and continues.

## Runner Function

The calling module should invoke M7 like this:

```python
def run_m7_validation(df, context):
    """Run M7 basic checks. Call this after every code execution."""
    import pandas as pd

    results = []

    # Check 1: Duplicate keys
    key = context.get("merge_key", "seqn")
    if key in df.columns:
        status, msg = check_duplicate_keys(df, key)
        results.append(("Duplicate keys", status, msg))

    # Check 2: Sample size
    status, msg = check_sample_size(df)
    results.append(("Sample size", status, msg))

    # Check 3: Missing rates
    key_vars = context.get("key_vars", [])
    status, issues = check_missing_rates(df, key_vars)
    for var, s, m in issues:
        results.append((f"Missing: {var}", s, m))

    # Check 4: Variable ranges
    range_issues = check_variable_ranges(df, key_vars)
    for var, s, m in range_issues:
        results.append((f"Range: {var}", s, m))

    # Check 5: Merge quality (only if _merge column exists)
    if "_merge" in df.columns:
        status, msg = check_merge_quality(df["_merge"])
        results.append(("Merge quality", status, msg))

    # Check 6: Weights
    weight_var = context.get("weight_var")
    status, msg = check_weights(df, weight_var)
    results.append(("Weights", status, msg))

    # Print report
    module = context.get("module", "??")
    print(f"\n{'='*50}")
    print(f"  M7 Validation Report — {module}")
    print(f"{'='*50}")
    n_pass = n_warn = n_fail = 0
    for name, status, msg in results:
        icon = {"pass": "✓ PASS", "warn": "⚠ WARN", "fail": "✗ FAIL"}[status]
        print(f"  {icon}  {name}: {msg}")
        if status == "pass": n_pass += 1
        elif status == "warn": n_warn += 1
        else: n_fail += 1
    print(f"{'='*50}")
    print(f"  Result: {n_pass} PASS, {n_warn} WARN, {n_fail} FAIL")
    print(f"{'='*50}\n")

    return {"pass": n_pass, "warn": n_warn, "fail": n_fail, "details": results}
```

## Action Items Output

When M7 detects warnings or failures, it generates structured action items for M0 to track:

```python
def generate_action_items(validation_results: dict) -> list:
    """Generate action items from validation results for M0 plan tracking."""
    action_items = []
    for name, status, msg in validation_results["details"]:
        if status in ("warn", "fail"):
            # Determine which module should handle this
            suggested_module = "M4"  # default: preprocessing fixes
            if "missing" in name.lower():
                suggested_module = "M3"
            elif "merge" in name.lower() or "duplicate" in name.lower():
                suggested_module = "M2"
            elif "vif" in name.lower() or "distribution" in name.lower() or "convergence" in name.lower():
                suggested_module = "M5"

            action_items.append({
                "description": f"[{status.upper()}] {name}: {msg}",
                "severity": status,
                "suggested_module": suggested_module,
                "source_check": name,
            })
    return action_items
```

The runner function should return action_items alongside the existing output. Update the end of `run_m7_validation()` to:

```python
    # Generate action items for M0 plan integration
    action_items = generate_action_items({"details": results})
    if action_items:
        print(f"\n  Action Items ({len(action_items)}):")
        for item in action_items:
            icon = "⚠" if item["severity"] == "warn" else "✗"
            print(f"    {icon} [{item['suggested_module']}] {item['description']}")

    return {"pass": n_pass, "warn": n_warn, "fail": n_fail, "details": results, "action_items": action_items}
```

## Important Rules
1. M7 basic checks run after **every** M2/M3/M4/M5 code execution. No exceptions.
2. M7 modeling checks (VIF, distribution, convergence) run **only** after M5.
3. Each check must complete in <10 seconds. Total M7 run <1 minute.
4. `fail` results halt the pipeline. `warn` results are shown but do not halt.
5. M7 does NOT modify the DataFrame — it is read-only.
6. All check functions are defined inline in the generated Python code — no external dependencies beyond pandas and statsmodels.


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
