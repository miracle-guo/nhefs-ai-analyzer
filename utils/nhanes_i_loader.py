"""
NHANES I loader — read a DU####.txt fixed-width file using its companion
DU####.sas codebook.

Parallel to utils.nhefs_loader but uses the NHANES I codebook parser
(col-range INPUT syntax, double-quoted LABELs). Prefer the sas_formatted/
variant of the codebook when available because it carries PROC FORMAT value
labels; fall back to the plain sas/ variant otherwise.

All columns load as strings at this stage to preserve raw sentinels;
numeric conversion and missing-value handling are deferred to M3.

Usage (Python)
--------------
    from utils.nhanes_i_loader import load_nhanes_i_file

    df = load_nhanes_i_file(
        data_path="datasets/raw/NHANES_I_1971_75/data/DU4111.txt",
        sas_path="datasets/raw/NHANES_I_1971_75/sas_formatted/DU4111_F.sas",
    )
    # -> pandas.DataFrame, dtype=str

Usage (CLI)
-----------
    python -m utils.nhanes_i_loader \
        datasets/raw/NHANES_I_1971_75/data/DU4111.txt \
        datasets/raw/NHANES_I_1971_75/sas_formatted/DU4111_F.sas \
        --parquet datasets/derived/nhanes_i/DU4111.parquet
"""

from __future__ import annotations

import argparse
from pathlib import Path

import pandas as pd

from utils.nhanes_i_codebook_importer import (
    NhanesCodebookSpec,
    parse_codebook,
)


def load_nhanes_i_file(
    data_path: str | Path,
    sas_path: str | Path,
    *,
    encoding: str = "latin-1",
) -> pd.DataFrame:
    """Load a NHANES I DU####.txt file into a DataFrame.

    Parameters
    ----------
    data_path
        Path to the fixed-width data file (e.g., 'DU4111.txt').
    sas_path
        Path to the companion SAS script. Either 'DU4111.sas' (under sas/)
        or 'DU4111_F.sas' (under sas_formatted/) works — the formatted
        variant is preferred when available because it also provides
        PROC FORMAT value labels.
    encoding
        Text encoding. NHANES I files are latin-1.

    Returns
    -------
    pandas.DataFrame
        All columns dtype=str. Column names follow the SAS INPUT statement
        exactly (e.g., 'SEQN', 'N1BM0255'). Downstream code is expected to
        rename / subset as needed.
    """
    spec = parse_codebook(sas_path)
    return pd.read_fwf(
        data_path,
        colspecs=spec.colspecs,
        names=spec.names,
        dtype=str,
        encoding=encoding,
    )


def _cli() -> None:
    parser = argparse.ArgumentParser(
        description="Load a NHANES I DU####.txt fixed-width file using its SAS script.",
    )
    parser.add_argument("data_path", type=Path, help="Path to the .txt data file")
    parser.add_argument(
        "sas_path",
        type=Path,
        help="Path to the companion .sas script (prefer sas_formatted/ variant)",
    )
    parser.add_argument(
        "--parquet",
        type=Path,
        default=None,
        help="If set, write the loaded DataFrame to this parquet path.",
    )
    args = parser.parse_args()

    df = load_nhanes_i_file(args.data_path, args.sas_path)

    print(f"Loaded: {args.data_path.name}")
    print(f"  Shape:  {df.shape[0]:,} rows × {df.shape[1]} columns")
    print(f"  SAS:    {args.sas_path.name}")
    if "SEQN" in df.columns:
        print(f"  SEQN:   {df['SEQN'].nunique():,} unique subject IDs")

    if args.parquet is not None:
        args.parquet.parent.mkdir(parents=True, exist_ok=True)
        df.to_parquet(args.parquet, index=False)
        print(f"  Wrote:  {args.parquet}")


if __name__ == "__main__":
    _cli()
