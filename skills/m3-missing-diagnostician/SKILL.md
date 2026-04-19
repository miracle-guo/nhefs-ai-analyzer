# M3 — Missing Value Diagnostician

> **Triggers**: "missing values", "missing data", "missingness", "imputation". Use when user needs to analyze or handle missing data in NHEFS.

## Purpose
Analyze missing data patterns in the harmonized NHEFS dataset, classify missingness mechanisms (MCAR/MAR/MNAR), and generate Python code to handle missing values. After execution, triggers M7 basic validation.

## When to Use
Invoke this skill when:
- M2 has produced a harmonized dataset and the user wants to understand/handle missingness
- M7 flagged high missing rates (>50%) on key variables
- The user asks about missing data patterns or imputation strategies
- Before proceeding to M4 preprocessing

## Inputs
- **DataFrame** from M2 output (harmonized, merged dataset)
- **Key variables** from M1 recommendations (outcome, exposure, covariates)
- `knowledge/nhefs_missing_conventions.json` for understanding CDC sentinel values and structural missingness patterns

## Process

### Step 1: Missing Rate Summary
Generate a per-variable missing rate table, sorted by missingness:

```python
import pandas as pd
import numpy as np

# Missing rate summary
missing_summary = pd.DataFrame({
    'n_missing': df.isna().sum(),
    'pct_missing': (df.isna().mean() * 100).round(1),
    'n_valid': df.notna().sum(),
    'dtype': df.dtypes
}).sort_values('pct_missing', ascending=False)

print("=== Missing Rate Summary ===")
print(missing_summary[missing_summary['pct_missing'] > 0].to_string())
print(f"\nComplete cases: {df.dropna().shape[0]} / {len(df)} ({df.dropna().shape[0]/len(df):.1%})")
```

### Step 2: Missing Pattern Analysis
Identify which variables tend to be missing together:

```python
# Missing pattern matrix (1=missing, 0=present)
miss_matrix = df[key_vars].isna().astype(int)

# Co-missingness: which variables are missing together?
co_missing = miss_matrix.T.dot(miss_matrix)
print("\n=== Co-Missingness Matrix ===")
print(co_missing.to_string())

# Most common missing patterns (top 10)
patterns = miss_matrix.groupby(list(key_vars)).size().reset_index(name='count')
patterns = patterns.sort_values('count', ascending=False).head(10)
print("\n=== Top 10 Missing Patterns ===")
print(patterns.to_string(index=False))
```

### Step 3: Missingness Mechanism Classification
Test whether missingness is related to observed variables (MCAR vs MAR):

```python
from scipy import stats

print("\n=== Missingness Mechanism Tests ===")
for var in key_vars:
    if df[var].isna().sum() == 0:
        continue
    missing_group = df[var].isna()
    print(f"\n--- {var} ({df[var].isna().mean():.1%} missing) ---")

    test_vars = [v for v in key_vars if v != var and df[v].notna().sum() > 30]
    for test_var in test_vars[:5]:  # limit to 5 comparisons
        obs = df.loc[~missing_group, test_var].dropna()
        mis = df.loc[missing_group, test_var].dropna()
        if len(obs) < 5 or len(mis) < 5:
            continue
        if df[test_var].nunique() <= 5:
            ct = pd.crosstab(missing_group, df[test_var])
            if ct.shape[0] == 2 and ct.shape[1] >= 2:
                chi2, p, _, _ = stats.chi2_contingency(ct)
                sig = "***" if p < 0.001 else "**" if p < 0.01 else "*" if p < 0.05 else ""
                print(f"  vs {test_var}: chi2={chi2:.2f}, p={p:.4f} {sig}")
        else:
            t_stat, p = stats.ttest_ind(obs, mis, equal_var=False)
            sig = "***" if p < 0.001 else "**" if p < 0.01 else "*" if p < 0.05 else ""
            print(f"  vs {test_var}: t={t_stat:.2f}, p={p:.4f} {sig}")
```

**Interpretation guide**:
- No tests significant → likely **MCAR** → complete case analysis OK
- Some tests significant → likely **MAR** → multiple imputation recommended
- Missingness depends on variable's own value → **MNAR** → sensitivity analysis needed

### Step 4: Recommend Handling Strategy

| Missing Rate | Mechanism | Recommendation |
|---|---|---|
| <5% | Any | Complete case analysis (listwise deletion) |
| 5-20% | MCAR | Complete case or single imputation |
| 5-20% | MAR | Multiple imputation (MICE) |
| 20-50% | MAR | Multiple imputation with auxiliary variables |
| >50% | Any | Drop variable or use as auxiliary only |
| Any | MNAR | Sensitivity analysis (bounds, pattern-mixture) |

### Step 5: Generate Handling Code

```python
# Option A: Complete case analysis
df_complete = df.dropna(subset=key_vars)
print(f"Complete case N: {len(df_complete)} ({len(df_complete)/len(df):.1%} of original)")

# Option B: Single imputation (median for continuous, mode for categorical)
df_imputed = df.copy()
for col in numeric_cols:
    df_imputed[col] = df_imputed[col].fillna(df_imputed[col].median())

# Option C: Multiple imputation (MICE)
from sklearn.experimental import enable_iterative_imputer
from sklearn.impute import IterativeImputer
mice_imputer = IterativeImputer(max_iter=10, random_state=42)
df_mice = df.copy()
df_mice[numeric_cols] = mice_imputer.fit_transform(df[numeric_cols])
```

### Step 6: Execute and Validate
1. **Write** code to `workspace/artifacts/m3_<timestamp>.py`
2. **Execute** immediately
3. **Trigger M7** basic validation on the resulting DataFrame

## Output Format

```
=== M3 Missing Value Diagnostician Report ===

Missing Rate Summary:
  N1GM0378       ~50.0% missing  → Structural (DU4091 subsample only). Use L1 from intv82 instead
  PMR5b1           4.0% missing  → Complete case or impute
  wt71_kg          2.1% missing  → Complete case
  SEXSUBJ          0.0% missing  → OK

Mechanism Assessment:
  N1GM0378: STRUCTURAL (DU4091 supplement subsample — not MCAR/MAR/MNAR)
  PMR5b1: likely MCAR (no significant associations with sex/age/race)
  wt71_kg: likely MCAR

Recommendation:
  → Drop N1GM0378 from primary analysis (structural subsample missingness; use L1/L2a from 1982 interview instead)
  → Complete case analysis for PMR5b1 (low missing, MCAR)
  → Complete case analysis for wt71_kg (low missing)

[Python code follows]
```

## Important Rules
1. **MANDATORY M7 VALIDATION**: After executing ANY generated code, you MUST immediately run M7 basic validation (duplicate keys, sample size, missing rates, variable ranges, merge quality, weight consistency) and present the validation report to the user BEFORE proceeding. Do NOT skip this step under any circumstances.
2. **ALWAYS** read `knowledge/nhefs_missing_conventions.json` to understand WHY values are missing (blanks, CDC sentinels, structural subsample missingness).
2. **ALWAYS** test missingness mechanism before recommending imputation.
3. **NEVER** impute the outcome variable in the primary analysis — use complete cases for outcomes.
4. **NEVER** impute the merge key (seqn).
5. Report complete-case N alongside imputed N for transparency.
6. **ALWAYS** execute the generated code immediately.
7. **ALWAYS** run M7 basic validation after execution.
8. For survey-weighted analyses, note that standard MICE does not account for weights — flag this limitation.


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
