# NHEFS + NHANES I Dataset Setup

This project uses the raw CDC public-use releases of the **NHEFS** (NHANES I Epidemiologic Follow-up Study) and **NHANES I** (National Health and Nutrition Examination Survey, 1971-75) baseline data.

## Quick Setup

1. Download the raw data ZIP (ask the project team for the link, or fetch from the NCHS FTP archive).
2. Extract it so the following directory structure exists under `datasets/raw/`:

```
datasets/raw/
  NHEFS_CDC_PublicUse/
    00_readme/readme_ftp.txt
    01_1982-84/N82int.txt, intv82.inputs.labels.txt, ...
    02_1986/n86int.txt, ...
    03_1987/n87int.txt, ...
    04_1992/N92int.txt, N92mort.txt, n92vitl.txt, ...
  NHANES_I_1971_75/
    data/DU4067.txt, DU4081.txt, DU4091.txt, DU4111.txt, DU4233.txt, ...
    docs/*.pdf
    sas/*.sas
    sas_formatted/*_F.sas
```

3. Verify with the ETL smoke test:

```bash
python -m pytest tests/test_nhefs_loader.py tests/test_nhanes_i_loader.py -v
```

All 16 tests should pass if the files are in the right place. Tests skip cleanly (not fail) if `datasets/raw/` is empty.

## What's in the data

- **NHEFS cohort**: 14,407 subjects aged 25-74 at NHANES I baseline, followed through 1992.
- **4 follow-up waves**: 1982-84 (in-person), 1986 (phone, age 55+ only), 1987 (phone), 1992 (phone).
- **Mortality**: 4,497 decedents through 1992 with ICD-9 cause of death coding.
- **NHANES I baseline**: ~23,808 examined subjects across ~20 examination modules (anthropometry, medical exam, lab values, dietary intake, etc.). The NHEFS cohort is a subset of this.

## Important notes

- `datasets/raw/` is **gitignored** — raw files are never committed (~700 MB total).
- Derived analytic parquets (small, committed) live under `datasets/derived/`.
- The data is **public** (NCHS public-use release, no DUA required). Citation: see `NHEFS_CDC_PublicUse/00_readme/readme_ftp.txt`.
- Primary key across all files: 5-character sample sequence number. Stored as `SEQN` (NHANES I), `SEQNUM` (NHEFS vital/mortality/later waves), or `SEQNUM1` (NHEFS 1982 interview). See `knowledge/merge_keys.json` for details.
