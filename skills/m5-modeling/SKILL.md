# M5 — Modeling & Reporting

> **Triggers**: "run model", "regression", "OLS", "logistic", "negative binomial", "mixed effects", "LASSO", "统计模型", "回归分析", "建模". Use when user is ready to fit statistical models.

## Purpose
Generate and execute Python code for statistical modeling using statsmodels. Supports OLS, negative binomial, logistic, mixed-effects, and LASSO models with survey weight support. After execution, triggers M7 basic + modeling validation checks.

## When to Use
Invoke this skill when:
- M4 has produced a preprocessed, analysis-ready dataset
- The user asks to run a model or test a hypothesis
- The user wants model comparison, marginal effects, or sensitivity analyses

## Inputs
- **DataFrame** from M4 output (preprocessed dataset)
- **Variable roles** from M1 (outcome, exposure, covariates, weights)
- **Research design** from M1 (cross-sectional, longitudinal, event-history)
- **User preferences** (model type, stratification, subgroup restrictions)

## Process

### Step 1: Model Selection
Based on outcome type and research design, recommend a model:

| Outcome Type | Distribution | Design | Recommended Model | statsmodels Function |
|---|---|---|---|---|
| Continuous (grip, cognition) | Normal | Cross-sectional | OLS | `sm.OLS` or `sm.WLS` |
| Continuous | Normal | Longitudinal | Mixed-effects linear | `sm.MixedLM` |
| Count (ADL 0-5, IADL 0-5) | Overdispersed | Cross-sectional | Negative binomial | `sm.GLM(family=NegativeBinomial())` |
| Count | Overdispersed | Longitudinal | GEE with NB | `sm.GEE(family=NegativeBinomial())` |
| Binary (any ADL, event) | Bernoulli | Cross-sectional | Logistic | `sm.Logit` or `sm.GLM(family=Binomial())` |
| Binary | Bernoulli | Longitudinal/discrete-time | GEE logistic | `sm.GEE(family=Binomial())` |
| Continuous | Normal | Variable selection | LASSO | `sklearn.linear_model.LassoCV` |

### Step 2: Build Model Specification

```python
import statsmodels.api as sm
import statsmodels.formula.api as smf
import numpy as np
import pandas as pd

# Define model components from M1 recommendations
outcome = 'wt82_71'
exposures = ['qsmk']
covariates = ['NEXAMAGE', 'C(SEXSUBJ)', 'C(REVRACE)', 'N1BM0112', 'wt71_kg', 'L9', 'C(Q3)', 'C(M12)']
weight_var = None  # Phase 1 is unweighted; Phase 2 adds survey weights

# Build formula
rhs = ' + '.join(exposures + covariates)
formula = f'{outcome} ~ {rhs}'
print(f"Model formula: {formula}")
```

### Step 3: Fit Model

```python
# --- OLS with survey weights ---
def fit_ols(df, formula, weight_var=None):
    subset = df.dropna(subset=used_vars)
    model = smf.wls(formula, data=subset,
                    weights=subset[weight_var] if weight_var else 1)
    result = model.fit()
    print(result.summary())
    return result

# --- Negative Binomial (for count outcomes) ---
def fit_nbreg(df, formula, weight_var=None):
    subset = df.dropna(subset=used_vars)
    model = smf.glm(formula, data=subset,
                    family=sm.families.NegativeBinomial(),
                    freq_weights=subset[weight_var] if weight_var else None)
    result = model.fit()
    print(result.summary())
    # Print IRRs (exponentiated coefficients)
    irr = np.exp(result.params)
    irr_ci = np.exp(result.conf_int())
    irr_table = pd.DataFrame({
        'IRR': irr, 'CI_low': irr_ci[0], 'CI_high': irr_ci[1],
        'p': result.pvalues
    })
    print("\n=== Incidence Rate Ratios ===")
    print(irr_table.round(4).to_string())
    return result

# --- Logistic regression ---
def fit_logit(df, formula, weight_var=None):
    subset = df.dropna(subset=used_vars)
    model = smf.glm(formula, data=subset,
                    family=sm.families.Binomial(),
                    freq_weights=subset[weight_var] if weight_var else None)
    result = model.fit()
    print(result.summary())
    # Print ORs
    ors = np.exp(result.params)
    or_ci = np.exp(result.conf_int())
    or_table = pd.DataFrame({
        'OR': ors, 'CI_low': or_ci[0], 'CI_high': or_ci[1],
        'p': result.pvalues
    })
    print("\n=== Odds Ratios ===")
    print(or_table.round(4).to_string())
    return result

# --- Mixed-effects linear model (longitudinal) ---
def fit_mixed(df, formula, group_var='seqn'):
    model = smf.mixedlm(formula, data=df, groups=df[group_var])
    result = model.fit()
    print(result.summary())
    return result
```

### Step 4: Sex-Stratified Models (if requested)

```python
def fit_stratified(df, formula, strat_var='ragender', weight_var=None, model_type='nbreg'):
    """Fit model separately for each stratum."""
    results = {}
    for val, label in [(1, 'Male'), (2, 'Female')]:
        subset = df[df[strat_var] == val]
        print(f"\n{'='*50}")
        print(f"  {label} (N={len(subset)})")
        print(f"{'='*50}")
        if model_type == 'nbreg':
            results[label] = fit_nbreg(subset, formula, weight_var)
        elif model_type == 'ols':
            results[label] = fit_ols(subset, formula, weight_var)
        elif model_type == 'logit':
            results[label] = fit_logit(subset, formula, weight_var)
    return results
```

### Step 5: Model Comparison (if multiple models)

```python
def compare_models(results_dict):
    """Compare AIC/BIC across models."""
    comparison = []
    for name, result in results_dict.items():
        comparison.append({
            'Model': name,
            'N': int(result.nobs),
            'AIC': result.aic,
            'BIC': result.bic,
            'Log-lik': result.llf,
        })
    comp_df = pd.DataFrame(comparison).sort_values('AIC')
    print("\n=== Model Comparison ===")
    print(comp_df.to_string(index=False))
    return comp_df
```

### Step 6: Results Summary Table

```python
def results_table(result, model_name='Model 1', exponentiate=False):
    """Create a publication-ready coefficient table."""
    coefs = result.params
    ci = result.conf_int()
    pvals = result.pvalues

    if exponentiate:
        table = pd.DataFrame({
            'Estimate': np.exp(coefs).round(4),
            'CI_low': np.exp(ci[0]).round(4),
            'CI_high': np.exp(ci[1]).round(4),
            'p': pvals.round(4)
        })
        est_label = 'IRR' if 'NegativeBinomial' in str(type(result.model)) else 'OR'
        table = table.rename(columns={'Estimate': est_label})
    else:
        table = pd.DataFrame({
            'Coef': coefs.round(4),
            'SE': result.bse.round(4),
            'CI_low': ci[0].round(4),
            'CI_high': ci[1].round(4),
            'p': pvals.round(4)
        })

    # Add significance stars
    table['sig'] = ''
    table.loc[table['p'] < 0.05, 'sig'] = '*'
    table.loc[table['p'] < 0.01, 'sig'] = '**'
    table.loc[table['p'] < 0.001, 'sig'] = '***'

    print(f"\n=== {model_name} ===")
    print(table.to_string())
    return table
```

### Step 7: Execute and Validate
1. **Write** code to `output/m5_<timestamp>.py`
2. **Execute** immediately
3. **Trigger M7** basic validation AND modeling checks:

```python
# --- M7 Validation (basic + modeling) ---
context = {
    "module": "M5",
    "merge_key": "seqn",
    "key_vars": [outcome] + exposures + covariate_vars,
    "weight_var": weight_var,
}
run_m7_validation(df, context)

# M5-specific modeling checks
check_vif(df, numeric_predictors)
check_outcome_distribution(df, outcome)
check_model_convergence(result)
```

## Output Format

```
=== M5 Modeling Report ===

Research Question: <from M1>
Model: OLS Linear Regression
Outcome: wt82_71 (weight change in kg, baseline to 1982)
Sample: N=~1,566 (ever-smokers with complete data)
Weight: None (Phase 1 unweighted)

=== Full Sample ===
[coefficient table with IRRs, CIs, p-values]

=== Male (N=456) ===
[coefficient table]

=== Female (N=576) ===
[coefficient table]

=== M7 Validation ===
[basic checks + VIF + distribution + convergence]
```

## Important Rules
1. **MANDATORY M7 VALIDATION**: After executing ANY generated code, you MUST immediately run M7 basic validation AND modeling checks (VIF, outcome distribution, convergence) and present the validation report to the user BEFORE proceeding. Do NOT skip this step under any circumstances.
2. **ALWAYS** select model family based on outcome distribution — never default to OLS for count/binary outcomes.
2. **ALWAYS** include survey weights when available (use `freq_weights` in GLM).
3. **ALWAYS** report both raw coefficients and exponentiated effects (IRR/OR) for non-linear models.
4. **ALWAYS** include confidence intervals alongside p-values.
5. **ALWAYS** check model convergence and report it.
6. For count outcomes, test overdispersion (var/mean ratio) before choosing Poisson vs NB.
7. For longitudinal data, use mixed-effects or GEE — never treat repeated measures as independent.
8. Present results with significance stars but remind users that p-values depend on sample size.
9. **ALWAYS** execute the generated code immediately.
10. **ALWAYS** run M7 basic + modeling validation after execution.
11. **NEVER** interpret results for the user beyond describing coefficient direction and significance — causal interpretation is the researcher's job.
12. When multiple correlated variables from the same family are included as exposures (e.g., multiple biomarker indices), do NOT put them all in one model. Fit separate models and compare via AIC/BIC or use LASSO for variable selection. Flag multicollinearity risk proactively.
13. For cross-sectional subsample data merged with longitudinal outcomes, ensure the model correctly specifies the temporal relationship (subsample measure at time T predicting outcomes at time T or later, not earlier).


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
