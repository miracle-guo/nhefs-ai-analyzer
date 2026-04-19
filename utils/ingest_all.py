"""
Bulk ingestion: load all NHEFS + NHANES I raw files and write derived parquets.

Processes every data file that has a companion codebook (*.inputs.labels.txt
for NHEFS, *.sas for NHANES I) and writes the result to datasets/derived/.

Usage:
    python -m utils.ingest_all

Reads from: datasets/raw/NHEFS_CDC_PublicUse/ and datasets/raw/NHANES_I_1971_75/
Writes to:  datasets/derived/nhefs/ and datasets/derived/nhanes_i/
"""

from __future__ import annotations

import sys
import time
from pathlib import Path

import pandas as pd

# ── Paths ──────────────────────────────────────────────────────────────
REPO_ROOT = Path(__file__).resolve().parents[1]
NHEFS_RAW = REPO_ROOT / "datasets" / "raw" / "NHEFS_CDC_PublicUse"
NHANES_RAW = REPO_ROOT / "datasets" / "raw" / "NHANES_I_1971_75"
DERIVED_NHEFS = REPO_ROOT / "datasets" / "derived" / "nhefs"
DERIVED_NHANES = REPO_ROOT / "datasets" / "derived" / "nhanes_i"

# ── NHEFS file manifest ──────────────────────────────────────────────
# Each entry: (data_file, label_file, output_name, description)
NHEFS_FILES = [
    # 1992 cumulative files (vital, mortality)
    ("04_1992/n92vitl.txt", "04_1992/vitl.inputs.labels.txt", "vitl", "Vital & tracing status (full cohort)"),
    ("04_1992/N92mort.txt", "04_1992/mort.inputs.labels.txt", "mort", "Mortality (decedents only)"),
    # Interview files per wave
    ("01_1982-84/N82int.txt", "01_1982-84/intv82.inputs.labels.txt", "intv82", "1982-84 interview"),
    ("02_1986/n86int.txt", "02_1986/intv86.inputs.labels.txt", "intv86", "1986 interview"),
    ("03_1987/n87int.txt", "03_1987/intv87.inputs.labels.txt", "intv87", "1987 interview"),
    ("04_1992/N92int.txt", "04_1992/intv92.inputs.labels.txt", "intv92", "1992 interview"),
    # Health care facility stay files per wave
    ("01_1982-84/n82hcfs.txt", "01_1982-84/hcfs82.inputs.labels.txt", "hcfs82", "1982-84 HCFS"),
    ("02_1986/n86hcfs.txt", "02_1986/hcfs86.inputs.labels.txt", "hcfs86", "1986 HCFS"),
    ("03_1987/n87hcfs.txt", "03_1987/hcfs87.inputs.labels.txt", "hcfs87", "1987 HCFS"),
    ("04_1992/n92hcfs.txt", "04_1992/hcfs92.inputs.labels.txt", "hcfs92", "1992 HCFS"),
    ("04_1992/n92hcfsp.txt", "04_1992/hcfssup.inputs.labels.txt", "hcfs92_supp", "1992 HCFS supplement"),
]

# ── NHANES I file manifest (Phase 1 + Phase 2 modules) ────────────────
# Using plain sas/ scripts (not _F.sas) for maximum portability.
# Phase-1 modules: DU4081, DU4091, DU4111, DU4233
# Phase-2 adds the rest.
NHANES_FILES = [
    ("DU4067", "Medical History (1-11 years)"),
    ("DU4081", "Medical History (12-74 years)"),
    ("DU4091", "General Medical History Supplement + Respiratory + Cardiovascular"),
    ("DU4111", "Anthropometry, Goniometry, Skeletal Age, Bone Density"),
    ("DU4121", "Arthritis Data"),
    ("DU4140", "ECG Computer Measurements"),
    ("DU4151", "Dermatology"),
    ("DU4161", "Ophthalmology"),
    ("DU4163", "Near and Distant Vision"),
    ("DU4171", "General Well-Being and CES-D Depression Scale"),
    ("DU4233", "Medical Examination"),
    ("DU4235", "Dental"),
    ("DU4241", "Audiometric"),
    ("DU4250", "Spirometry (Best Trials Only)"),
    ("DU4251", "Chest X-Ray, Pulmonary Diffusion, Tuberculin"),
    ("DU4701", "Dietary Frequency and Adequacy"),
    ("DU4702", "Model Gram"),
    ("DU4703", "Nutrient Composition"),
    ("DU4704", "24-Hour Food Consumption Intake"),
    ("DU4800", "Biochemistry, Serology, Hematology, Blood Slides, Urine"),
]


def ingest_nhefs():
    """Ingest all NHEFS raw files → parquet."""
    from utils.nhefs_loader import load_nhefs_file

    DERIVED_NHEFS.mkdir(parents=True, exist_ok=True)
    results = []

    for data_rel, label_rel, name, desc in NHEFS_FILES:
        data_path = NHEFS_RAW / data_rel
        label_path = NHEFS_RAW / label_rel
        out_path = DERIVED_NHEFS / f"{name}.parquet"

        if not data_path.exists() or not label_path.exists():
            print(f"  SKIP  {name:12s}  (file not found)")
            continue

        t0 = time.time()
        try:
            df = load_nhefs_file(data_path, label_path)
            df.to_parquet(out_path, index=False)
            elapsed = time.time() - t0
            print(f"  OK    {name:12s}  {df.shape[0]:>6,} x {df.shape[1]:>4}  "
                  f"{out_path.stat().st_size / 1e6:>5.1f} MB  ({elapsed:.1f}s)  {desc}")
            results.append((name, df.shape, out_path))
        except Exception as e:
            print(f"  FAIL  {name:12s}  {e}")

    return results


def ingest_nhanes_i():
    """Ingest all NHANES I DU#### files → parquet."""
    from utils.nhanes_i_loader import load_nhanes_i_file

    DERIVED_NHANES.mkdir(parents=True, exist_ok=True)
    results = []

    for module, desc in NHANES_FILES:
        data_path = NHANES_RAW / "data" / f"{module}.txt"
        sas_path = NHANES_RAW / "sas" / f"{module}.sas"
        out_path = DERIVED_NHANES / f"{module}.parquet"

        if not data_path.exists() or not sas_path.exists():
            print(f"  SKIP  {module:8s}  (file not found)")
            continue

        t0 = time.time()
        try:
            df = load_nhanes_i_file(data_path, sas_path)
            df.to_parquet(out_path, index=False)
            elapsed = time.time() - t0
            print(f"  OK    {module:8s}  {df.shape[0]:>6,} x {df.shape[1]:>4}  "
                  f"{out_path.stat().st_size / 1e6:>5.1f} MB  ({elapsed:.1f}s)  {desc}")
            results.append((module, df.shape, out_path))
        except Exception as e:
            print(f"  FAIL  {module:8s}  {e}")

    return results


def main():
    print("=" * 70)
    print("NHEFS + NHANES I Bulk Ingestion")
    print("=" * 70)

    print("\n--- NHEFS follow-up files ---")
    nhefs_results = ingest_nhefs()

    print("\n--- NHANES I baseline modules ---")
    nhanes_results = ingest_nhanes_i()

    # Summary
    total_files = len(nhefs_results) + len(nhanes_results)
    total_rows = sum(s[0] for _, s, _ in nhefs_results) + sum(s[0] for _, s, _ in nhanes_results)
    total_mb = sum(p.stat().st_size / 1e6 for _, _, p in nhefs_results + nhanes_results)

    print(f"\n{'='*70}")
    print(f"Done: {total_files} files, {total_rows:,} total rows, {total_mb:.1f} MB parquet")
    print(f"NHEFS:    {DERIVED_NHEFS}")
    print(f"NHANES I: {DERIVED_NHANES}")


if __name__ == "__main__":
    main()
