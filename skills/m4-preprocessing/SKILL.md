# M4 — Preprocessing Engine

> **Triggers**: "preprocess", "transform", "recode", "normalize", "PCA", "energy adjustment", "Willett", "数据预处理", "变量转换", "重编码". Use when user needs to transform or construct variables.

## Purpose
Generate and execute Python code for variable transformations, outlier handling, energy adjustment, standardization, and composite indicator construction (dynamically reading from M6's `knowledge/biometrics.json`). After execution, triggers M7 basic validation.

## When to Use
Invoke this skill when:
- M3 has handled missing values and the user wants to prepare analysis-ready variables
- The user asks for log-transforms, standardization, winsorization, or outlier handling
- The user needs energy-adjusted nutrient variables (residual method)
- The user wants composite indicators (ADL index, comorbidity count, etc.)
- Before proceeding to M5 modeling

## Inputs
- **DataFrame** from M3 output (missing-handled dataset)
- **Variable roles** from M1 (which vars are outcomes, exposures, covariates)
- **M6 biometric library** (`knowledge/biometrics.json`) for composite indicator definitions

## Process

### Step 1: Identify Transformation Needs
For each variable, recommend appropriate transformations based on distribution:

```python
import pandas as pd
import numpy as np
from scipy import stats

print("=== Variable Distribution Summary ===")
for var in key_vars:
    col = df[var].dropna()
    if len(col) == 0:
        continue
    skew = col.skew()
    kurt = col.kurtosis()
    print(f"{var}: mean={col.mean():.2f}, sd={col.std():.2f}, "
          f"skew={skew:.2f}, kurt={kurt:.2f}, range=[{col.min():.1f}, {col.max():.1f}]")

    # Auto-recommend transforms
    if skew > 2 and col.min() > 0:
        print(f"  → Recommend log-transform (right-skewed)")
    elif skew > 1 and col.min() >= 0:
        print(f"  → Recommend sqrt-transform (moderately right-skewed)")
    elif abs(skew) > 2:
        print(f"  → Recommend winsorize at 1st/99th percentile")
```

### Step 2: Apply Transformations

```python
# Log-transform (for right-skewed variables like ferritin, CRP, income)
def log_transform(series, name):
    """Log-transform with handling for zeros."""
    transformed = np.log(series.clip(lower=0.001))  # clip to avoid log(0)
    print(f"  Log-transformed {name}: skew {series.skew():.2f} → {transformed.skew():.2f}")
    return transformed

# Standardization (z-score)
def standardize(series, name):
    """Standardize to mean=0, sd=1."""
    z = (series - series.mean()) / series.std()
    print(f"  Standardized {name}: mean={z.mean():.4f}, sd={z.std():.4f}")
    return z

# Winsorization (cap at percentiles)
def winsorize(series, name, lower=1, upper=99):
    """Cap values at specified percentiles."""
    lo = np.percentile(series.dropna(), lower)
    hi = np.percentile(series.dropna(), upper)
    clipped = series.clip(lower=lo, upper=hi)
    n_clipped = ((series < lo) | (series > hi)).sum()
    print(f"  Winsorized {name}: {n_clipped} values clipped to [{lo:.2f}, {hi:.2f}]")
    return clipped
```

### Step 3: Energy Adjustment (Nutritional Variables)
For dietary intake variables, use the Willett residual method:

```python
import statsmodels.api as sm

def energy_adjust(df, nutrient_vars, calorie_var='calor_sum'):
    """Energy-adjust nutrient variables using residual method (Willett)."""
    residuals = {}
    for var in nutrient_vars:
        subset = df[[var, calorie_var]].dropna()
        if len(subset) < 10:
            print(f"  ⚠ Skipping {var}: too few observations for energy adjustment")
            continue
        X = sm.add_constant(subset[calorie_var])
        model = sm.OLS(subset[var], X).fit()
        resid = model.resid
        # Add back the mean so values are interpretable
        resid_centered = resid + subset[var].mean()
        df.loc[subset.index, f'{var}_adj'] = resid_centered
        print(f"  Energy-adjusted {var} → {var}_adj (R² with calories: {model.rsquared:.3f})")
    return df
```

### Step 4: Composite Indicator Construction
Build composite variables by dynamically reading M6 definitions from `knowledge/biometrics.json`:

```python
import json

def load_biometrics_library(path="knowledge/biometrics.json"):
    """Load the biometric indicator library."""
    with open(path, "r") as f:
        return json.load(f)

def build_from_biometrics(df, indicator_names, biometrics_path="knowledge/biometrics.json"):
    """
    Dynamically construct indicators from biometrics.json definitions.

    For each requested indicator name, reads its spec from the library and
    generates + executes the appropriate construction code.
    """
    library = load_biometrics_library(biometrics_path)
    built = []

    for name in indicator_names:
        if name not in library:
            print(f"  ⚠ '{name}' not found in biometrics.json — skipping")
            continue

        spec = library[name]
        components = spec.get("components", [])
        method = spec.get("method", "custom")

        # Check that all component columns exist in the DataFrame
        missing_cols = [c for c in components if c not in df.columns]
        if missing_cols:
            print(f"  ⚠ '{name}': missing columns {missing_cols} — skipping")
            continue

        if method == "sum":
            df[name] = df[components].sum(axis=1, min_count=len(components))
        elif method == "mean":
            df[name] = df[components].mean(axis=1)
        elif method == "any":
            df[name] = (df[components] > 0).any(axis=1).astype(float)
            df.loc[df[components].isna().any(axis=1), name] = np.nan
        else:
            # Custom formula — generate from spec["formula"] string
            print(f"  ℹ '{name}' uses custom formula — generating code from spec")
            # The agent reads spec["formula"] and writes the appropriate Python code
            # (this branch is handled by the LLM at generation time, not executed blindly)
            continue

        # Validate against expected_range if defined
        if "expected_range" in spec:
            lo, hi = spec["expected_range"]
            vals = df[name].dropna()
            out_of_range = ((vals < lo) | (vals > hi)).sum()
            if out_of_range > 0:
                print(f"  ⚠ '{name}': {out_of_range} values outside expected [{lo}, {hi}]")

        n_valid = df[name].notna().sum()
        vmin = df[name].min() if n_valid > 0 else float('nan')
        vmax = df[name].max() if n_valid > 0 else float('nan')
        print(f"  ✓ Built '{name}' ({spec.get('label', '')}): "
              f"method={method}, N valid={n_valid}, range=[{vmin:.1f}, {vmax:.1f}]")
        built.append(name)

    print(f"\n  Summary: {len(built)}/{len(indicator_names)} indicators built from biometrics.json")
    return df

# Usage: build all indicators needed by the analysis plan
# indicator_names = ["nhefs_comorbidity", "bmi_baseline", "education_cat"]
# df = build_from_biometrics(df, indicator_names)
```

For indicators with `method: "custom"` (like qsmk, wt82_71), the agent reads the `formula` field from biometrics.json and generates the specific Python code. This ensures the formula is always sourced from the library, not guessed:

```python
# Example: the agent reads biometrics["qsmk"]["formula"] and generates:
df['qsmk'] = ((df['L1'] == '1') & (df['L2a'] == '2')).astype(float)
df.loc[df['L1'] != '1', 'qsmk'] = np.nan  # undefined for never-smokers
```

Manual `build_indicator()` is still available as a fallback for ad-hoc indicators not yet in biometrics.json:

```python
def build_indicator(df, name, components, method='sum', set_missing_if_iwstat=None):
    """
    Build a composite indicator from component variables (manual fallback).
    method: 'sum' (add components), 'mean' (average), 'any' (binary: 1 if any component > 0)
    """
    component_df = df[components].copy()

    if method == 'sum':
        df[name] = component_df.sum(axis=1, min_count=len(components))
    elif method == 'mean':
        df[name] = component_df.mean(axis=1)
    elif method == 'any':
        df[name] = (component_df > 0).any(axis=1).astype(float)
        df.loc[component_df.isna().any(axis=1), name] = np.nan

    if set_missing_if_iwstat and set_missing_if_iwstat in df.columns:
        df.loc[df[set_missing_if_iwstat] != 1, name] = np.nan

    n_valid = df[name].notna().sum()
    print(f"  Built {name}: {method} of {len(components)} components, "
          f"N valid={n_valid}, range=[{df[name].min():.0f}, {df[name].max():.0f}]")
    return df
```

### Step 5: Residualized Derived Variables
When a variable needs to be adjusted for one or more confounders (e.g., computing an age-adjusted residual, or adjusting for cell composition), use OLS residuals:

```python
def compute_residual(df, target_var, adjust_vars, suffix='_resid'):
    """
    Compute residualized version of target_var by regressing out adjust_vars.
    Common use: age-adjusted biomarker scores, cell-composition-adjusted measures.
    """
    import statsmodels.api as sm
    cols = [target_var] + adjust_vars
    subset = df[cols].dropna()
    if len(subset) < len(adjust_vars) + 2:
        print(f"  ⚠ Skipping {target_var}: too few observations for residualization")
        return df
    X = sm.add_constant(subset[adjust_vars])
    model = sm.OLS(subset[target_var], X).fit()
    resid_name = f'{target_var}{suffix}'
    df.loc[subset.index, resid_name] = model.resid
    print(f"  Residualized {target_var} → {resid_name} "
          f"(adjusted for {adjust_vars}, R²={model.rsquared:.3f}, N={len(subset)})")
    return df

# Example: age-adjusted biomarker residual
# df = compute_residual(df, 'levine_dnamage', ['r13agey_m'], suffix='_aa')
#
# Example: cell-composition-adjusted residual
# df = compute_residual(df, 'levine_dnamage', ['r13agey_m', 'cd8t', 'cd4t', 'nk', 'bcell', 'mono', 'gran'], suffix='_ieaa')
```

**Important**: The residual method is NOT appropriate for all variables. Some measures already represent a rate or index rather than a level. Check `variable_registry.json` notes for guidance — if the variable notes say "Do NOT compute standard EAA residuals", use raw values or z-scores instead.

### Step 5b: PCA (if requested)
For dimensionality reduction of correlated variables (e.g., trace minerals):

```python
from sklearn.preprocessing import StandardScaler
from sklearn.decomposition import PCA

def run_pca(df, vars_for_pca, n_components=4, prefix='pc'):
    """Run PCA on standardized variables."""
    subset = df[vars_for_pca].dropna()
    scaler = StandardScaler()
    X_scaled = scaler.fit_transform(subset)

    pca = PCA(n_components=n_components)
    components = pca.fit_transform(X_scaled)

    # Print explained variance
    print(f"\n=== PCA Results ({len(vars_for_pca)} variables → {n_components} components) ===")
    for i, (var_exp, cum_exp) in enumerate(zip(
            pca.explained_variance_ratio_,
            np.cumsum(pca.explained_variance_ratio_))):
        print(f"  {prefix}{i+1}: {var_exp:.1%} variance (cumulative: {cum_exp:.1%})")

    # Print loadings
    loadings = pd.DataFrame(pca.components_.T,
                            columns=[f'{prefix}{i+1}' for i in range(n_components)],
                            index=vars_for_pca)
    print(f"\n=== Loadings ===")
    print(loadings.round(3).to_string())

    # Add components back to df
    for i in range(n_components):
        df.loc[subset.index, f'{prefix}{i+1}'] = components[:, i]

    return df, pca
```

### Step 6: Recoding (Demographics, Categories)

```python
# Race/ethnicity 4-category
def recode_race4(df):
    """Create 4-category race variable from raracem + rahispan."""
    df['race4'] = np.nan
    df.loc[(df['raracem'] == 1) & (df['rahispan'] != 1), 'race4'] = 1  # NH White
    df.loc[(df['raracem'] == 2) & (df['rahispan'] != 1), 'race4'] = 2  # NH Black
    df.loc[df['rahispan'] == 1, 'race4'] = 3                           # Hispanic
    df.loc[(df['raracem'] == 3) & (df['rahispan'] != 1), 'race4'] = 4  # NH Other
    print(f"  race4: {df['race4'].value_counts().sort_index().to_dict()}")
    return df

# Education categories
def recode_education(df, var='raedyrs'):
    """Create 4-category education from years of education."""
    df['ed4cat'] = pd.cut(df[var], bins=[-1, 8, 11, 12, 17],
                          labels=[1, 2, 3, 4])  # <HS, some HS, HS, college+
    df['ed4cat'] = df['ed4cat'].astype(float)
    print(f"  ed4cat: {df['ed4cat'].value_counts().sort_index().to_dict()}")
    return df

# Smoking 3-category
def recode_smoking(df, wave=12):
    """Create 3-category smoking: 0=never, 1=current, 2=former."""
    ever_var = f'r{wave}smokev'
    now_var = f'r{wave}smoken'
    df['smoking3'] = np.nan
    if ever_var in df.columns and now_var in df.columns:
        df.loc[(df[ever_var] == 0) & (df[now_var] == 0), 'smoking3'] = 0  # never
        df.loc[df[now_var] == 1, 'smoking3'] = 1                          # current
        df.loc[(df[now_var] == 0) & (df[ever_var] == 1), 'smoking3'] = 2  # former
        print(f"  smoking3: {df['smoking3'].value_counts().sort_index().to_dict()}")
    return df
```

### Step 7: Execute and Validate
1. **Write** code to `workspace/artifacts/{step_id}/m4_preprocessing.py` (use `dl.write_artifact(step_id, "m4_preprocessing.py", code_str)`)
2. **Execute** immediately
3. **Trigger M7** basic validation

## Important Rules
1. **MANDATORY M7 VALIDATION**: After executing ANY generated code, you MUST immediately run M7 basic validation (duplicate keys, sample size, missing rates, variable ranges, merge quality, weight consistency) and present the validation report to the user BEFORE proceeding. Do NOT skip this step under any circumstances.
2. **ALWAYS** log-transform right-skewed biomarkers (ferritin, CRP, income). Check skewness first.
2. **ALWAYS** energy-adjust dietary intake variables before analysis (Willett residual method).
3. **ALWAYS** standardize variables before PCA.
4. **NEVER** transform the outcome variable without explicit user request.
5. For composite indicators, use `min_count` parameter in `sum()` to propagate NaN correctly (don't silently treat missing as 0).
6. Document every transformation applied — print before/after summaries.
7. **ALWAYS** execute the generated code immediately.
8. **ALWAYS** run M7 basic validation after execution.
9. Preserve the original variable alongside the transformed version (e.g., keep `wt71_kg` when creating `log_wt71_kg`).
10. When computing residualized variables (e.g., age-adjusted scores), check `variable_registry.json` notes first — some variables should NOT be residualized (e.g., rate/pace measures, non-age-unit indices). Use raw values or z-scores for these instead.
11. When multiple variables of the same conceptual family are used together, check for multicollinearity. If correlated variables are placed in the same model, flag and recommend running separate models or using PCA/LASSO.

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
dest = dl.write_artifact(step_id, "m4_preprocessing.py", code_str)   # returns Path
dest = dl.write_artifact(step_id, "dataset.parquet", df.to_parquet())
```

Or via Bash:
```bash
ANALYSIS_PROJECT_ROOT=. python3 utils/decision_logger.py make-step-dir step_1_3_1
```

Direct writes to files inside `workspace/artifacts/{step_id}/` using Write tool or shell are also acceptable as long as the directory exists.

**Forbidden for M4:**
- `dl.save_plan()` — M0 only
- `dl.append_event()` — M0 only
- Any direct write to `workspace/analysis_plan.json`, `workspace/decision_log.jsonl`, or `workspace/_update_signal.json`
- Writing code to `workspace/artifacts/m4_<timestamp>.py` — use `workspace/artifacts/{step_id}/m4_preprocessing.py` instead

**Artifact path convention for M4:**
- Code: `workspace/artifacts/{step_id}/m4_preprocessing.py`
- Dataset snapshot: `workspace/artifacts/{step_id}/dataset.parquet`
- Transformation log: `workspace/artifacts/{step_id}/transform_log.txt`
- Figures (distribution plots): `workspace/artifacts/{step_id}/<varname>_dist.png`

**Return the Executor Output Contract to M0 when done:**
```python
return {
    "status": "committed",
    "output_summary": "Preprocessed N=14200 records; derived qsmk, wt82_71, log_weight; 3 variables log-transformed.",
    "key_result": {"n_obs": 14200, "vars_derived": 3, "vars_transformed": 3},
    "artifacts": [
        {"path": "workspace/artifacts/{step_id}/m4_preprocessing.py", "type": "code", "label": "Preprocessing script"},
        {"path": "workspace/artifacts/{step_id}/dataset.parquet", "type": "dataset", "label": "Preprocessed dataset"},
    ],
    "validation_summary": {"checks_run": 12, "passed": 12, "failed": 0, "notes": ""},
    "output_snapshot_id": "workspace/artifacts/{step_id}/dataset.parquet",
}
```
