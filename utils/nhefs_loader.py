"""
NHEFS loader — read a CDC fixed-width data file using its companion SAS
codebook spec.

Uses utils.nhefs_codebook_importer.parse_codebook() to get column positions
and names, then pandas.read_fwf() to load the data. All columns are loaded as
strings at this stage — sentinel handling, numeric conversion, and missingness
encoding happen downstream in M3 (missing diagnostician) to keep responsibility
separated.

Usage (Python)
--------------
    from utils.nhefs_loader import load_nhefs_file

    df = load_nhefs_file(
        data_path="datasets/raw/NHEFS_CDC_PublicUse/04_1992/n92vitl.txt",
        label_path="datasets/raw/NHEFS_CDC_PublicUse/04_1992/vitl.inputs.labels.txt",
    )
    # -> pandas.DataFrame with shape (14407, 116), dtype=str

Usage (CLI)
-----------
    python -m utils.nhefs_loader \
        datasets/raw/NHEFS_CDC_PublicUse/04_1992/n92vitl.txt \
        datasets/raw/NHEFS_CDC_PublicUse/04_1992/vitl.inputs.labels.txt \
        --parquet datasets/derived/nhefs/vitl.parquet

When --parquet is given, writes the DataFrame to parquet (creating parent
directories as needed). When omitted, prints a shape + dtype summary to stdout.
"""

from __future__ import annotations

import argparse
from pathlib import Path

import pandas as pd

from utils.nhefs_codebook_importer import CodebookSpec, parse_codebook


def load_nhefs_file(
    data_path: str | Path,
    label_path: str | Path,
    *,
    drop_blank_fields: bool = True,
    encoding: str = "latin-1",
) -> pd.DataFrame:
    """Load a CDC fixed-width data file into a DataFrame using its SAS spec.

    Parameters
    ----------
    data_path
        Path to the data file (e.g., 'n92vitl.txt').
    label_path
        Path to the companion SAS codebook (e.g., 'vitl.inputs.labels.txt').
    drop_blank_fields
        If True (default), columns named like 'BLANK1', 'BLANK2', etc. are
        dropped after load. These are filler/reserved bytes in the CDC source
        and carry no information. Pass False to retain them for debugging.
    encoding
        File encoding. NHEFS/NHANES I files are latin-1 (single-byte); the
        default is correct for every file in the zip.

    Returns
    -------
    pandas.DataFrame
        All columns are dtype=str. Leading/trailing whitespace in each cell is
        preserved by default — downstream callers (M3) should call .str.strip()
        before sentinel matching.
    """
    spec = parse_codebook(label_path)
    df = _read_fwf_from_spec(data_path, spec, encoding=encoding)

    if drop_blank_fields:
        blank_cols = [c for c in df.columns if c.upper().startswith("BLANK")]
        df = df.drop(columns=blank_cols)

    return df


def _read_fwf_from_spec(
    data_path: str | Path,
    spec: CodebookSpec,
    *,
    encoding: str = "latin-1",
) -> pd.DataFrame:
    """Inner helper: invoke pandas.read_fwf with the parsed colspecs."""
    return pd.read_fwf(
        data_path,
        colspecs=spec.colspecs,
        names=spec.names,
        dtype=str,
        encoding=encoding,
    )


def _cli() -> None:
    parser = argparse.ArgumentParser(
        description="Load a CDC NHEFS fixed-width file using its SAS codebook.",
    )
    parser.add_argument("data_path", type=Path, help="Path to the .txt data file")
    parser.add_argument(
        "label_path",
        type=Path,
        help="Path to the companion .inputs.labels.txt codebook",
    )
    parser.add_argument(
        "--parquet",
        type=Path,
        default=None,
        help="If set, write the loaded DataFrame to this parquet path.",
    )
    parser.add_argument(
        "--keep-blanks",
        action="store_true",
        help="Retain BLANK* filler fields (dropped by default).",
    )
    args = parser.parse_args()

    df = load_nhefs_file(
        args.data_path,
        args.label_path,
        drop_blank_fields=not args.keep_blanks,
    )

    print(f"Loaded: {args.data_path.name}")
    print(f"  Shape:    {df.shape[0]:,} rows × {df.shape[1]} columns")
    print(f"  Codebook: {args.label_path.name}")

    if args.parquet is not None:
        args.parquet.parent.mkdir(parents=True, exist_ok=True)
        df.to_parquet(args.parquet, index=False)
        print(f"  Wrote:    {args.parquet}")


if __name__ == "__main__":
    _cli()
