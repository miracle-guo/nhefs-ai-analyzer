# M2 — Data Harmonizer

> **Triggers**: "harmonize data", "merge datasets", "combine data", "load NHEFS", "merge baseline", "merge followup". Use when user needs to load and merge NHEFS + NHANES I data files.

## Purpose
Generate and execute Python code (pandas) for loading raw CDC fixed-width files, harmonizing primary keys, and merging across datasets. Handles key normalization (SEQN ↔ SEQNUM ↔ SEQNUM1), sentinel missing value conversion, and cross-dataset merges. After execution, automatically triggers M7 validation.

## When to Use
Invoke this skill when:
- The user needs to load raw NHEFS or NHANES I data files
- M1 has produced a variable list requiring multiple source files
- The user asks for merge/harmonization code for longitudinal analysis
- The user encounters merge-key confusion (SEQN vs SEQNUM vs SEQNUM1)

## Inputs
- **Variable list**: from M1 output or user specification (e.g., `SEXSUBJ`, `N1BM0260`, `L1`, `PMR5b1`)
- **Target wave(s)**: e.g., "baseline + 1982" or "all waves"
- **Source dataset(s)**: from `knowledge/merge_keys.json` (NHEFS_vital, NHANES_I_anthropometry, NHEFS_1982_interview, etc.)

## Process

### Step 1: Wave Resolution
Read `knowledge/wave_mapping.json` to resolve user's wave specification:

- "baseline" → NHANES I 1971-75
- "1982" or "f1_1982" → NHEFS Followup 1 (1982-84)
- "1992" or "f4_1992" → NHEFS Followup 4 (1992)
- "all waves" → baseline + f1_1982 + f2_1986 + f3_1987 + f4_1992

### Step 2: Load Files Using ETL Backbone

```python
from utils.nhefs_loader import load_nhefs_file
from utils.nhanes_i_loader import load_nhanes_i_file

# Load NHEFS files (*.inputs.labels.txt codebook format)
df_vitl = load_nhefs_file(
    "datasets/raw/NHEFS_CDC_PublicUse/04_1992/n92vitl.txt",
    "datasets/raw/NHEFS_CDC_PublicUse/04_1992/vitl.inputs.labels.txt"
)

# Load NHANES I baseline files (DU####.sas codebook format)
df_anthro = load_nhanes_i_file(
    "datasets/raw/NHANES_I_1971_75/data/DU4111.txt",
    "datasets/raw/NHANES_I_1971_75/sas/DU4111.sas"
)
```

### Step 3: Key Normalization

**CRITICAL**: NHEFS and NHANES I use three different names for the same subject ID. Normalize ALL to lowercase `seqn` before any merge.

```python
def normalize_key(df, source_key):
    """Normalize subject ID to canonical 'seqn' column."""
    df = df.copy()
    df['seqn'] = df[source_key].astype(str).str.strip().str.zfill(5)
    if source_key != 'seqn':
        df = df.drop(columns=[source_key], errors='ignore')
    return df

# Key mappings from merge_keys.json:
#   NHANES I files:  SEQN      (cols 1-5)
#   NHEFS vital/mort: SEQNUM   (cols 12-16 after BLANK1 prefix)
#   NHEFS intv82:     SEQNUM1  (cols 1-5, with SEQNUM2..36 as redundant section headers)

df_vitl   = normalize_key(df_vitl, 'SEQNUM')
df_anthro = normalize_key(df_anthro, 'SEQN')
df_intv82 = normalize_key(df_intv82, 'SEQNUM1')
# Drop redundant SEQNUM2..SEQNUM36 from intv82:
seq_cols = [c for c in df_intv82.columns if c.startswith('SEQNUM') and c != 'seqn']
df_intv82 = df_intv82.drop(columns=seq_cols)
```

### Step 4: Missing Value Handling (Pre-Merge)

Read `knowledge/nhefs_missing_conventions.json` and apply sentinel conversion:

```python
import pandas as pd

def apply_sentinels(df, var_name, sentinels):
    """Replace CDC sentinel values with NaN."""
    df[var_name] = df[var_name].str.strip()
    df[var_name] = df[var_name].replace('', pd.NA)  # blank = not asked
    for s in sentinels:
        df[var_name] = df[var_name].replace(s, pd.NA)
    return df

# Example: NHANES I anthropometry sentinels
# N1BM0260 (weight kg): sentinel 88888 = "Blank, but applicable"
df_anthro = apply_sentinels(df_anthro, 'N1BM0260', ['88888'])
df_anthro['N1BM0260'] = pd.to_numeric(df_anthro['N1BM0260'], errors='coerce')
# Divide by 100 for implied decimal: 07904 → 79.04 kg
df_anthro['wt71_kg'] = df_anthro['N1BM0260'] / 100
```

### Step 5: Merge Datasets

Follow the canonical merge order from `knowledge/merge_keys.json`:

```python
# Start from vital (cohort anchor, 14,407 rows)
df = df_vitl.copy()

# Left-join NHANES I baseline modules
df = df.merge(df_anthro[['seqn', 'wt71_kg', 'N1BM0266', 'N1BM0101', 'N1BM0103', 'N1BM0104', 'N1BM0112']],
              on='seqn', how='left', indicator='_merge_anthro')

# Audit merge quality
print("\n--- Merge Audit: vitl × DU4111 (anthropometry) ---")
print(df['_merge_anthro'].value_counts())
match_rate = (df['_merge_anthro'] == 'both').mean()
print(f"Match rate: {match_rate:.1%}")
# Expected: ~60-65% (14,407 NHEFS cohort within 23,808 NHANES I examined)
df = df.drop(columns=['_merge_anthro'])

# Left-join 1982 interview
df = df.merge(df_intv82[['seqn', 'L1', 'L2a', 'L9', 'PMR5b1', 'Q3', 'M12']],
              on='seqn', how='left', indicator='_merge_intv82')
print("\n--- Merge Audit: cohort × N82int ---")
print(df['_merge_intv82'].value_counts())
# Expected: ~12,220 matched (interviewed), ~2,187 left-only (not interviewed)
df = df.drop(columns=['_merge_intv82'])
```

### Step 6: Execute and Validate
After generating the complete Python code:

1. **Write** the code to `workspace/artifacts/<module>_<timestamp>.py`
2. **Execute** the code immediately
3. **Trigger M7** basic validation on the resulting DataFrame:

```python
context = {
    "module": "M2",
    "merge_key": "seqn",
    "key_vars": ["wt71_kg", "PMR5b1", "L1", "L2a", "SEXSUBJ", "NEXAMAGE"],
    "weight_var": None,  # Phase 1 is unweighted; Phase 2 adds STRATA/PSU
}
```

4. If M7 reports any `fail`, stop and fix before proceeding
5. If M7 reports only `pass`/`warn`, show results to user and proceed

## Important Rules

1. **MANDATORY M7 VALIDATION**: After executing ANY generated code, you MUST immediately run M7 basic validation (duplicate keys, sample size, missing rates, variable ranges, merge quality, weight consistency) and present the validation report to the user BEFORE proceeding.
2. **ALWAYS** read `knowledge/wave_mapping.json` before determining which files to load.
3. **ALWAYS** normalize primary keys to lowercase `seqn` (5-char, zero-padded string) before merging. Consult `knowledge/merge_keys.json` for the key alias in each file.
4. **ALWAYS** apply sentinel missing-value conversion from `knowledge/nhefs_missing_conventions.json` before numeric conversion.
5. **ALWAYS** include a merge audit (match rates, unmatched counts) for every merge operation.
6. **ALWAYS** use left joins starting from NHEFS_vital (14,407 cohort anchor) so unmatched subjects are visible.
7. Use the ETL backbone loaders (`utils.nhefs_loader` and `utils.nhanes_i_loader`) — never hand-write `read_fwf` colspecs.
8. Flag when subsample files are merged (DU4091 with ~6,913 subjects will produce ~50% unmatched rate — this is expected, not an error).
9. **ALWAYS** execute the generated code immediately after writing it.
10. Present M7 results to the user before proceeding to the next module.

## Common Pitfalls Prevented
- **Key mismatch**: SEQN (NHANES I) vs SEQNUM (NHEFS vital/mort) vs SEQNUM1 (NHEFS 1982 interview) → solved by normalize_key().
- **Implied decimals**: N1BM0260 stores weight as integer 07904 meaning 79.04 kg → divide by 100 after sentinel removal.
- **Sentinel contamination**: CDC uses 88888/9999/etc. as missing sentinels that will corrupt numeric means if not removed → apply_sentinels() before pd.to_numeric().
- **Subsample confusion**: DU4091 has 6,913 rows, not 14,407 — merge will show ~50% left-only, which is correct structural missingness, not a data error.
- **SEQNUM1..36 duplication**: intv82 has 33 redundant SEQNUM columns — drop all except SEQNUM1 before merge to avoid column explosion.


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
