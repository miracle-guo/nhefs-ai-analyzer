# M6 — Biometric Library

> **Triggers**: "biometric library", "composite indicator", "comorbidity index", "derived variable", "qsmk", "wt82_71", "biometrics.json". Use when user references standard NHEFS composite or derived measures.

## Purpose
Provide reusable composite indicator and derived variable definitions for common NHEFS analysis variables. Each indicator is defined as a JSON specification in `knowledge/biometrics.json` that M4 can consume to dynamically construct the variable. This skill serves as both a lookup reference and a code generator.

## When to Use
Invoke this skill when:
- M4 needs to construct a composite indicator or derived variable
- The user asks about standard NHEFS variable constructions (qsmk, wt82_71, BMI, comorbidity)
- The user wants to create a custom indicator and save it for reuse
- The user wants to list, inspect, or modify entries in `knowledge/biometrics.json`

## Data Source

All indicator definitions live in `knowledge/biometrics.json`. Each entry is keyed by indicator name and follows a standard schema:

```json
{
  "indicator_name": {
    "name": "indicator_name",
    "label": "Human-readable description",
    "components": ["VAR1", "VAR2"],
    "formula": "how to combine components",
    "method": "sum | mean | any | custom",
    "source_dataset": "which file provides the components",
    "expected_range": [lo, hi],
    "notes": "analytical caveats, references"
  }
}
```

## Dynamic Consumption by M4

M4 reads `knowledge/biometrics.json` at runtime and generates Python code to construct each requested indicator. The consumption flow is:

```python
import json

# 1. Load biometric library
with open("knowledge/biometrics.json") as f:
    biometrics = json.load(f)

# 2. Look up the indicator by name
spec = biometrics["nhefs_comorbidity"]

# 3. Auto-generate construction code based on method
if spec.get("method") == "sum":
    components = spec["components"]
    df[spec["name"]] = df[components].sum(axis=1, min_count=len(components))
elif spec.get("method") == "formula":
    # Parse and execute the formula string
    pass

# 4. Validate against expected_range if defined
if "expected_range" in spec:
    lo, hi = spec["expected_range"]
    out_of_range = ((df[spec["name"]] < lo) | (df[spec["name"]] > hi)).sum()
    print(f"  {spec['name']}: {out_of_range} values outside expected range [{lo}, {hi}]")
```

M4's `build_from_biometrics()` function automates this for all indicators requested by the analysis plan.

## Indicator Definitions

### Derived Treatment / Exposure Variables

#### qsmk (quit smoking between baseline and 1982)
```json
{
  "name": "qsmk",
  "label": "Quit smoking between baseline (1971-75) and 1982",
  "type": "derived_binary",
  "components": ["L1", "L2a"],
  "formula": "qsmk = 1 if L1=='1' AND L2a=='2'; qsmk = 0 if L1=='1' AND L2a=='1'; qsmk = NaN if L1!='1' (never-smokers excluded)",
  "source_wave": "f1_1982",
  "source_dataset": "NHEFS_1982_interview",
  "values": {"0": "Still smoking in 1982", "1": "Quit by 1982"},
  "notes": "Defined only for ever-smokers (L1=1). Never-smokers (L1=2) are excluded. This is the canonical treatment variable in the Hernán/Robins causal inference textbook."
}
```

#### wt82_71 (weight change, primary outcome)
```json
{
  "name": "wt82_71",
  "label": "Weight change from baseline to 1982 (kg)",
  "type": "derived_continuous",
  "components": ["PMR5b1", "N1BM0260"],
  "formula": "wt82_71 = wt82_kg - wt71_kg, where wt82_kg is derived from PMR5b1 (1982 measured weight, convert to kg if in lbs) and wt71_kg = N1BM0260 / 100 (baseline weight, implied decimal)",
  "source_waves": ["baseline", "f1_1982"],
  "notes": "The canonical continuous outcome in the Hernán/Robins Ch 12 analysis. Expected mean effect of qsmk on wt82_71 is ~3.4 kg after covariate adjustment. PMR5b1 units need verification from the 1982 codebook PDF — likely pounds, requiring conversion to kg."
}
```

### Demographic Recodes

#### race_binary (NHEFS race, simplified)
```json
{
  "name": "race_binary",
  "label": "Race (White=0, Non-White=1)",
  "type": "derived_binary",
  "components": ["REVRACE"],
  "formula": "race_binary = 0 if REVRACE=='4' (White); race_binary = 1 otherwise",
  "source_dataset": "NHEFS_vital",
  "notes": "NHEFS REVRACE codes: 1=Not stated, 2=Other, 3=Black, 4=White, 5=Asian/PI. The textbook nhefs.csv uses a binary race=0 (White) / race=1 (non-White) recode. This is a 1970s-era categorization."
}
```

#### education_cat (education categories)
```json
{
  "name": "education_cat",
  "label": "Education categories from NHANES I highest grade",
  "type": "derived_categorical",
  "components": ["N1BM0112"],
  "formula": "Map NCHS education codes (see DU4111_F.sas PROC FORMAT BM0112F) to 5 categories: 1=8th grade or less, 2=HS dropout, 3=HS grad, 4=some college, 5=college+",
  "source_dataset": "NHANES_I_anthropometry",
  "notes": "NCHS codes range from 10 (None) to 42+ (graduate). Exact mapping requires BM0112F PROC FORMAT values from sas_formatted/DU4111_F.sas."
}
```

### Health Condition Composites

#### nhefs_comorbidity (baseline comorbidity count)
```json
{
  "name": "nhefs_comorbidity",
  "label": "Count of baseline self-reported conditions (0-3)",
  "type": "composite_count",
  "components": ["N1AH0431", "N1AH0423", "N1AH0417"],
  "method": "sum",
  "component_recode": "Recode each to binary: 1 if 'Yes' (code 1 or 2), 0 if 'No' (code 3)",
  "range": [0, 3],
  "source_dataset": "NHANES_I_adult_medical_history",
  "notes": "Phase-1 minimal comorbidity count: diabetes + HBP + weak heart. Phase 2 can expand to include more conditions from DU4081 and DU4091."
}
```

### BMI (derived from anthropometry)

#### bmi_baseline (baseline BMI)
```json
{
  "name": "bmi_baseline",
  "label": "Baseline BMI (kg/m²)",
  "type": "derived_continuous",
  "components": ["N1BM0260", "N1BM0266"],
  "formula": "bmi = (N1BM0260/100) / ((N1BM0266/1000)^2), where N1BM0260 is weight in kg*100 and N1BM0266 is height in cm*10",
  "source_dataset": "NHANES_I_anthropometry",
  "expected_range": [12, 60],
  "notes": "Both source variables have implied decimals. N1BM0260/100 gives kg; N1BM0266/10 gives cm, divide by 100 for meters."
}
```

## How to Add New Indicators

To add a new indicator, append a new key to `knowledge/biometrics.json` following the same schema. The key should match the indicator `name`. Each entry must include:

1. `name` — short identifier (same as the JSON key)
2. `label` — human-readable description
3. `components` — list of source variable names from `knowledge/variable_registry.json`
4. `formula` or `method` — how to combine components
5. `source_dataset` — which file provides the components
6. `notes` — analytical caveats, expected ranges, references

M4 reads `knowledge/biometrics.json` and generates the Python code to construct the variable.

## Important Rules
1. **ALWAYS** verify component variables exist in `knowledge/variable_registry.json` before defining an indicator.
2. **ALWAYS** document the formula explicitly — never leave derivation logic implicit.
3. For Phase 1, the biometric library is minimal (qsmk, wt82_71, race_binary, education_cat, nhefs_comorbidity, bmi_baseline). Phase 2 expands it.
4. Flag any indicator whose components come from a subsample dataset (e.g., DU4091) — note the coverage limitation.
5. When the textbook nhefs.csv uses a variable (e.g., `smokeintensity`, `active`, `exercise`), document the mapping from raw NHEFS/NHANES I variables to that name so results are comparable.


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
