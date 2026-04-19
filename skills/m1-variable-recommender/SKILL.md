# M1 — Variable Recommender

> **Triggers**: "recommend variables", "what variables", "which variables", "variable selection", "outcome exposure covariates". Use when user describes a research question involving NHEFS data.

## Purpose
Parse a researcher's natural-language research question and recommend relevant NHEFS + NHANES I variables, organized by role (outcome, exposure, covariates, weights) with wave availability information.

## When to Use
Invoke this skill when the user:
- Describes a research question or hypothesis
- Asks "what variables should I use for..."
- Needs to identify outcomes, exposures, or control variables in NHEFS
- Wants to explore what's available in a particular domain

## Inputs
- **Research question** (natural language, e.g., "Does smoking cessation cause weight gain?")
- **Optional**: specific domains of interest, target waves, study design preferences

## Process

### Step 1: Research Design Decomposition
Parse the research question into a structured research design:

```
{
  "outcome": "<what is being predicted/explained>",
  "exposure": "<primary independent variable(s) of interest>",
  "covariates": "<confounders and control variables>",
  "study_design": "cross-sectional | longitudinal | event-history",
  "population": "<any subpopulation restrictions>"
}
```

### Step 2: Variable Lookup
Read `knowledge/variable_registry.json` and match each research design component to relevant variable families. For each recommended variable, extract:
- Variable name
- Label and description
- Available waves (baseline, f1_1982, f2_1986, f3_1987, f4_1992)
- Source dataset (NHEFS_vital, NHANES_I_anthropometry, NHEFS_1982_interview, etc.)
- Analytical notes (distribution, recommended transformations)

### Step 3: Wave Availability Matrix
Cross-reference with `knowledge/wave_mapping.json` to build an availability matrix showing which variables are available in which waves. Flag any gaps or subsample restrictions (e.g., DU4091 only covers ~6,913 subjects).

### Step 4: Suggest Control Variables
Always recommend standard demographic controls unless the user explicitly excludes them:
- **Always include**: SEXSUBJ (sex), NEXAMAGE (age at baseline), REVRACE (race), N1BM0112 (education)
- **Usually include**: MARTSTAT (marital status), baseline weight (N1BM0260)
- **Consider**: baseline BP (N1ME0228/N1ME0231), baseline conditions (N1AH0423 HBP, N1AH0431 diabetes)
- **If using 1982 interview data**: smoking intensity (L9), exercise (Q3), alcohol (M12)
- **If using survey design (Phase 2)**: STRATA, PSU, and appropriate sample weight. Check `merge_keys.json` for weight guidance per dataset.

## Output Format

Present recommendations as a structured table followed by notes:

```
## Recommended Variables for: "<research question>"

### Research Design
- Outcome: <description>
- Exposure: <description>
- Design: <cross-sectional | longitudinal | survival>
- Suggested waves: <range>

### Variable Recommendations

| Role | Variable | Label | Wave | Source | Notes |
|------|----------|-------|------|--------|-------|
| Outcome | wt82_71 (derived) | Weight change 1971→1982 (kg) | f1_1982 | Derived from PMR5b1 - N1BM0260 | Continuous — OLS appropriate |
| Exposure | qsmk (derived) | Quit smoking between baseline and 1982 | f1_1982 | Derived from L1 + L2a | Binary 0/1 |
| Covariate | SEXSUBJ | Sex | all | NHEFS_vital | Time-invariant |
| Covariate | NEXAMAGE | Age at NHANES I exam | baseline | NHEFS_vital | Range 25-74 |
| ... | ... | ... | ... | ... | ... |
| Design | STRATA | Sampling stratum | all | NHEFS_vital | Phase 2 only |

### Wave Availability Matrix
| Variable | Baseline | 1982-84 | 1986 | 1987 | 1992 |
|----------|----------|---------|------|------|------|
| N1BM0260 |    ✓     |         |      |      |      |
| PMR5b1   |          |    ✓    |      |      |      |
| CVITALST |          |         |      |      |   ✓  |

### Analytical Notes
- <data merge considerations — check merge_keys.json for key aliases>
- <recommended transformations>
- <potential issues (missing data, selection bias, structural missingness, subsample coverage)>
- <suggested references / prior studies using similar variables>
```

## Important Rules
1. **ALWAYS** read `knowledge/variable_registry.json` — never guess variable names.
2. **ALWAYS** check wave availability — don't recommend variables that don't exist in the target wave.
3. **ALWAYS** include survey weights in recommendations when Phase 2 survey design is active.
4. Flag when exposure and outcome come from different datasets (requires merge — hand off to M2). Consult `merge_keys.json` for the merge topology and key aliases (SEQN vs SEQNUM vs SEQNUM1).
5. For derived variables (qsmk, wt82_71, BMI), specify exactly which raw variables and formula to use.
6. For continuous outcomes (weight change), recommend OLS. For binary outcomes (death), recommend logistic or Cox PH. For count outcomes, suggest negative binomial.
7. Ask the user to confirm the variable list before proceeding to M2.
8. M2 generates **Python code** (pandas + statsmodels), not Stata.
9. When variables have heterogeneous scales or units (e.g., kg vs mmHg vs years), explicitly note this and warn against naive cross-variable comparison. Recommend standardization (z-scores) when comparing across such variables.
10. Flag subsample coverage issues — particularly DU4091 (baseline smoking supplement, ~6,913 subjects only) vs the 1982 interview smoking questions (~12,220 subjects).

## Example

**User**: "Does smoking cessation cause weight gain?"

**Decomposition**:
- Outcome: weight change between baseline (1971-75) and 1982 followup
- Exposure: quit smoking (binary: stopped smoking between baseline and 1982)
- Design: observational with baseline confounders (causal inference question)
- Population: ever-smokers at baseline

**Key recommendations**:
- Outcome: wt82_71 (derived: PMR5b1 in kg - N1BM0260 in kg)
- Exposure: qsmk (derived: L1=1 AND L2a=2)
- Controls: NEXAMAGE, SEXSUBJ, REVRACE, N1BM0112 (education), N1BM0260 (baseline weight), L9 (smoking intensity), Q3 (exercise), M12 (alcohol), N1AH0423 (baseline HBP), N1AH0431 (baseline diabetes)
- Waves: baseline + f1_1982
- Note: Need to merge NHEFS_vital + NHANES_I_anthropometry + NHEFS_1982_interview + NHANES_I_adult_medical_history (hand off to M2)


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
