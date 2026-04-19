# NHEFS Causal Inference Analysis Agent

A Claude Code plugin that assists researchers in conducting causal inference analyses using the **NHEFS** (NHANES I Epidemiologic Follow-up Study) dataset, with a focus on observational study methods and treatment effect estimation.

## Dataset

The agent operates on the raw CDC public-use release of NHEFS + NHANES I baseline data:

- **NHEFS**: 14,407 subjects from NHANES I (1971-75), followed through 1992 across 4 waves
- **NHANES I baseline**: Physical examination, medical history, anthropometry, lab values
- **Mortality**: 4,497 decedents with ICD-9 cause of death coding
- Data files are fixed-width text with SAS codebook companions
- See `datasets/README.md` for setup instructions

## Pipeline Architecture

The agent orchestrates a step-by-step pipeline (M0-M9), pausing for user confirmation at each stage:

- **M0 (Analysis Planner)** — Workflow orchestration (auto-triggered)
- **M1 (Variable Recommender)** — Research question → variable recommendations from `knowledge/variable_registry.json`
- **M2 (Data Harmonizer)** — Load raw CDC files, normalize keys (SEQN/SEQNUM/SEQNUM1 → seqn), merge datasets
- **M3 (Missing Diagnostician)** — Classify missingness (MCAR/MAR/MNAR/structural), handle CDC sentinels
- **M4 (Preprocessing)** — Transformations, derived variables (qsmk, wt82_71, BMI), composite indicators
- **M5 (Modeling)** — OLS, logistic, negative binomial, mixed-effects, IPW, Cox PH (Phase 2)
- **M6 (Biometric Library)** — Reusable composite indicator definitions in `knowledge/biometrics.json` (dynamically consumed by M4)
- **M7 (Validation Engine)** — Automated sanity checks after every code execution
- **M8 (Reporting)** — Export analysis reports as Word (.docx) or Markdown
- **M9 (Code Compiler)** — Compile the full pipeline into reproducible Python scripts

## Design Principles

1. **Deterministic over generative** — Variable definitions, merge keys, missing-value conventions, and wave mappings are hardcoded in `knowledge/*.json`, never LLM-inferred.
2. **Human-in-the-loop** — Every pipeline step pauses for user confirmation before proceeding.
3. **Python-first** — All generated code uses pandas + statsmodels, executed immediately.
4. **Validation-integrated** — M7 validation runs automatically after every M2-M5 code execution.

## Knowledge Base

All dataset-specific knowledge lives under `knowledge/`:

| File | Purpose |
|------|---------|
| `variable_registry.json` | NHEFS + NHANES I variable definitions, labels, domains, missing sentinels |
| `wave_mapping.json` | 5-wave NHEFS schema (baseline + 4 followups) with data file paths |
| `merge_keys.json` | Merge topology, key aliases (SEQN/SEQNUM/SEQNUM1), merge order |
| `nhefs_missing_conventions.json` | CDC blank/sentinel conventions, structural missingness patterns |

## ETL Backbone

Raw CDC data is loaded via two parser modules:

- `utils/nhefs_codebook_importer.py` — Parses NHEFS `*.inputs.labels.txt` codebooks
- `utils/nhanes_i_codebook_importer.py` — Parses NHANES I `DU####.sas` codebooks
- `utils/nhefs_loader.py` — Loads NHEFS fixed-width files to DataFrames
- `utils/nhanes_i_loader.py` — Loads NHANES I fixed-width files to DataFrames

## File I/O Architecture

All runtime outputs live under `workspace/`. The three live-state files are managed exclusively by `utils/decision_logger.py`:

| File | Owner | Writer |
|------|-------|--------|
| `workspace/analysis_plan.json` | M0 | `DecisionLogger.save_plan()` only |
| `workspace/decision_log.jsonl` | M0 | `DecisionLogger.append_event()` only |
| `workspace/_update_signal.json` | M0 | `DecisionLogger._refresh_signal()` only |
| `workspace/artifacts/{step_id}/*` | Executor (M1–M9) | `DecisionLogger.write_artifact()` or direct write |
| `workspace/plan_versions/` | M0 | Versioned snapshots of analysis_plan.json |

**Global file writing rules (enforced for every skill):**
1. **M0 is the sole writer** of `workspace/analysis_plan.json`, `workspace/decision_log.jsonl`, and `workspace/_update_signal.json`. No executor may write these files directly.
2. **Executors write only to `workspace/artifacts/{step_id}/`**. They call `dl.make_step_dir(step_id)` first, then write artifacts there.
3. **All JSON plan writes are atomic** — `save_plan()` uses tempfile → fsync → `os.replace()`. Direct `open("workspace/analysis_plan.json", "w")` is forbidden everywhere.
4. **The event log is append-only** — `append_event()` is the only allowed write path. Lines are never modified.
5. **Dataset snapshots live at `workspace/artifacts/{step_id}/dataset.parquet`** — not in a separate `snapshots/` directory.
6. **Artifact paths are always relative to project root** — `workspace/artifacts/{step_id}/filename`, never absolute paths.
7. **No runtime files in project root** — all generated files go under `workspace/`.

## Global Rules

1. **ALWAYS** read `knowledge/variable_registry.json` before recommending or using variables. Never guess variable names.
2. **ALWAYS** normalize subject IDs to lowercase `seqn` (5-char, zero-padded string) before any merge. Consult `knowledge/merge_keys.json` for the correct source key in each file.
3. **ALWAYS** apply sentinel-value cleaning from `knowledge/nhefs_missing_conventions.json` before numeric conversion.
4. **ALWAYS** run M7 validation after executing any generated code. Do NOT proceed if M7 reports a `fail`.
5. **ALWAYS** use left joins starting from NHEFS vital (14,407 cohort anchor) so unmatched subjects are explicit.
6. **ALWAYS** pause for user confirmation after each pipeline step.
7. **NEVER** infer wave letters, variable names, missing-code meanings, or merge keys from context — look them up in the knowledge files.
8. M2 generates **Python code** (pandas), not Stata. Use `utils.nhefs_loader` and `utils.nhanes_i_loader` for file loading — never hand-write `read_fwf` colspecs.
9. **NEVER** write directly to `workspace/analysis_plan.json`, `workspace/decision_log.jsonl`, or `workspace/_update_signal.json` — always use `DecisionLogger` from `utils/decision_logger.py`.
10. **NEVER** write runtime output files to the project root — all generated files belong under `workspace/`.

## Web Dashboard

A live-updating web dashboard visualizes analysis plan progress, step statuses, and artifacts.

- **Launch**: `bash web/serve.sh` → open http://localhost:8765/web/dashboard.html
- **Auto-offer**: M0 asks the user whether to open the dashboard before analysis begins (Step 0).
- **Polling**: The dashboard checks `workspace/_update_signal.json` every 2 seconds and refreshes the plan view automatically.

## Example Usage

> "Does smoking cessation between baseline and 1982 cause weight gain?"

The agent will:
1. Decompose into exposure (qsmk), outcome (wt82_71), confounders
2. Recommend variables from the registry (L1, L2a, PMR5b1, NEXAMAGE, SEXSUBJ, etc.)
3. Load and merge raw CDC files (vital + DU4111 + DU4081 + DU4233 + N82int)
4. Handle sentinels and structural missingness
5. Derive qsmk and wt82_71, preprocess covariates
6. Fit OLS with covariate adjustment
7. Report: "Quitters gained an estimated 2.4 kg more than non-quitters (p=0.015)"
