# NHEFS Causal Inference Analysis Agent

A Claude Code plugin that assists researchers in conducting causal inference analyses using the **NHEFS** (NHANES I Epidemiologic Follow-up Study) dataset — the canonical teaching dataset from Hernán & Robins, *Causal Inference: What If*.

## Goal

Enable researchers to go from a natural-language research question to a complete, reproducible statistical analysis pipeline — with deterministic data handling from raw CDC public-use files, automated validation, and human-in-the-loop confirmation at every step.

## Key Functionality

The agent orchestrates a step-by-step pipeline, pausing for user confirmation at each stage. M0 (Analysis Planner) coordinates the workflow; M7 (Validation Engine) runs automatically after every code execution.

- **Variable Recommendation (M1)** — Parse research questions and recommend NHEFS variables by role (outcome, exposure, covariates)
- **Data Harmonization (M2)** — Load raw CDC fixed-width files, normalize merge keys (SEQN/SEQNUM/SEQNUM1), cross-dataset merging
- **Missing Data Diagnostics (M3)** — Identify CDC sentinel values, classify structural missingness and missingness mechanisms (MCAR/MAR/MNAR)
- **Preprocessing (M4)** — Derived variables (qsmk, wt82_71, BMI), demographic recoding, composite indicator construction, energy adjustment (Willett)
- **Statistical Modeling (M5)** — OLS, logistic, negative binomial, mixed-effects; IPW and Cox PH planned for Phase 2
- **Biometric Library (M6)** — Reusable composite indicator definitions in `knowledge/biometrics.json`, dynamically consumed by M4
- **Validation Engine (M7)** — Automated sanity checks (duplicate keys, sample size, missing rates, variable ranges, merge quality)
- **Report Generation (M8)** — Export analysis reports as Word (.docx) or Markdown
- **Code Compilation (M9)** — Compile the full pipeline into reproducible Python scripts

## Dataset

This agent uses the **raw CDC public-use release** of NHEFS + NHANES I baseline (not the pre-cleaned 1,629-row textbook CSV). The raw data provides:

- 14,407 subjects aged 25-74 at NHANES I (1971-75), followed through 1992
- 4 follow-up waves: 1982-84, 1986, 1987, 1992
- 4,497 decedents with ICD-9 cause of death coding
- ~20 NHANES I baseline examination modules (anthropometry, medical exam, lab values, dietary intake, etc.)

> **Note:** Raw data files (~700 MB) are not included in the repository. See `datasets/README.md` for setup instructions.

## File Structure

```
CLAUDE.md                                 # Project instructions and global rules
README.md                                 # This file
.claude-plugin/plugin.json                # Plugin metadata
skills/
  m0-analysis-planner/                    # Workflow orchestration (auto-triggered)
  m1-variable-recommender/                # Research question -> variable recommendations
  m2-data-harmonizer/                     # Raw file loading + cross-dataset merge
  m3-missing-diagnostician/               # Missing value analysis
  m4-preprocessing/                       # Variable transformations
  m5-modeling/                            # Statistical modeling
  m6-biometric-library/                   # Biometric indicator definitions (biometrics.json)
  m7-validation-engine/                   # Automated validation
  m8-reporting/                           # Report generation
  m9-code-compiler/                       # Pipeline code compilation
utils/
  decision_logger.py                      # Atomic file I/O for plan, log, and signal
  nhefs_codebook_importer.py              # SAS INPUT parser for NHEFS *.inputs.labels.txt
  nhefs_loader.py                         # NHEFS fixed-width file loader
  nhanes_i_codebook_importer.py           # SAS script parser for NHANES I DU####.sas
  nhanes_i_loader.py                      # NHANES I fixed-width file loader
  schemas.py                              # JSON schema validation helpers
knowledge/
  variable_registry.json                  # 50 Phase-1 NHEFS + NHANES I variables
  wave_mapping.json                       # 5-wave NHEFS schema
  merge_keys.json                         # Merge topology and key aliases
  nhefs_missing_conventions.json          # CDC sentinel values and structural missingness
  biometrics.json                         # Composite indicator definitions (BMI, comorbidity, etc.)
web/
  dashboard.html                          # Live-updating analysis dashboard (single-file)
  serve.sh                                # Launch local HTTP server for the dashboard
workspace/                                # All runtime outputs (gitignored)
  analysis_plan.json                      # Live analysis plan (managed by M0)
  decision_log.jsonl                      # Append-only event log
  _update_signal.json                     # Dashboard polling signal
  plan_versions/                          # Immutable snapshots (v1.json, v2.json, ...)
  artifacts/{step_id}/                    # Per-step outputs (code, data, results)
datasets/
  raw/                                    # Raw CDC files (gitignored, ~700 MB)
  derived/                                # Derived analytic parquets (committed)
  README.md                               # Data setup instructions
tests/
  test_nhefs_loader.py                    # ETL smoke tests (NHEFS)
  test_nhanes_i_loader.py                 # ETL smoke tests (NHANES I)
  test_nhefs_smoking_cessation.py         # Phase-1 canonical smoke test
docs/plans/                               # Migration and development plans
```

## Workspace and Intermediate Outputs

All runtime outputs are managed under `workspace/` — the project root stays clean and committed files are never mixed with generated artifacts.

The three **live-state files** are written exclusively by `utils/decision_logger.py` (M0 is the sole writer):

- `workspace/analysis_plan.json` — the current analysis plan, atomically written via tempfile + fsync + `os.replace()`. Skills read this to determine what to execute next.
- `workspace/decision_log.jsonl` — an append-only log of every event (step started, committed, branched, rewound, etc.). Lines are never modified or deleted.
- `workspace/_update_signal.json` — a lightweight signal file the web dashboard polls every 2 seconds to detect changes.

**Artifacts** produced by each pipeline step (generated Python code, dataset snapshots as `.parquet`, validation reports, model summaries) are saved to `workspace/artifacts/{step_id}/`. Each step calls `DecisionLogger.make_step_dir(step_id)` before writing any output.

**Plan versioning**: every time the plan is saved, an immutable snapshot is written to `workspace/plan_versions/v{N}.json`. If the live plan file is corrupted, `DecisionLogger.load_plan()` automatically recovers from the latest snapshot.

## Web Dashboard

A single-page web dashboard provides real-time visibility into the analysis pipeline.

**Launch**:
```bash
bash web/serve.sh
# Then open http://localhost:8765/web/dashboard.html
```

When starting a new analysis, M0 automatically offers to launch the dashboard before proceeding.

**Features**:
- **Pipeline overview** — visual map of all phases, tasks, and steps with color-coded status (planned, running, completed, exploring, abandoned)
- **Golden path tracking** — highlights the committed path through the analysis, distinguishing it from exploratory branches
- **Artifact viewer** — click any step to inspect its generated code, data snapshots, logs, and images inline
- **Timeline** — chronological event log showing decisions, branches, and rewinds
- **Auto-refresh** — polls `workspace/_update_signal.json` every 2 seconds; no manual reload needed

## Usage

Install as a Claude Code plugin, then describe your research question:

> "Does smoking cessation cause weight gain?"

The agent will generate an analysis plan and guide you through variable selection, data loading, missing data handling, preprocessing, and modeling — confirming each step with you before proceeding.

## Phase 1 Validation

The canonical smoke test reproduces the Hernán/Robins Chapter 12 result:

```
OLS: wt82_71 ~ qsmk + age + sex + race + smokeintensity + wt71_kg + ...
  qsmk coefficient: 2.40 kg (95% CI: 0.46-4.33, p=0.015)
  Expected (textbook): ~3.4 kg
  N = 2,750 complete cases
```

Run the full test suite:

```bash
python -m pytest tests/ -v
```

## Acknowledgments

Data source: National Center for Health Statistics (NCHS). NHANES I Epidemiologic Followup Study (NHEFS), machine readable data file and documentation.

Causal inference methodology: Hernán MA, Robins JM (2020). *Causal Inference: What If*. Boca Raton: Chapman & Hall/CRC.
