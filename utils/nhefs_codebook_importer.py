"""
NHEFS codebook importer — parse CDC '*.inputs.labels.txt' files into
machine-readable field specs.

The NHEFS + NHANES I public-use release ships each fixed-width data file with a
companion '.inputs.labels.txt' file containing a SAS program fragment:

    INPUT @1    BLANK1   $CHAR11.
          @12   SEQNUM   $CHAR5.
          @17   CVITALST $CHAR1.
          ...
          ;
    LABEL SEQNUM   = 'SAMPLE SEQUENCE NUMBER'
          CVITALST = 'CURRENT VITAL STATUS'
          ...
          ;

This module parses both the INPUT and LABEL blocks into dicts/lists that
downstream code can use directly (for pandas.read_fwf, variable registry
population, etc.).

Usage
-----
    from utils.nhefs_codebook_importer import parse_codebook

    spec = parse_codebook("datasets/raw/NHEFS_CDC_PublicUse/04_1992/vitl.inputs.labels.txt")
    # spec.fields  -> list[FieldSpec]  (position, name, width, label)
    # spec.labels  -> dict[str, str]
    # spec.colspecs -> list[tuple[int, int]]  (0-indexed half-open, ready for read_fwf)
    # spec.names    -> list[str]
"""

from __future__ import annotations

import re
from dataclasses import dataclass, field
from pathlib import Path


# SAS INPUT statement field pattern:
#     @<position>   <NAME>   [$]CHAR<width>.
#
# The optional '$' marks a character field (vs numeric). NHEFS files always use
# CHAR for the raw read — numeric conversion happens downstream after sentinel
# handling. '$CHAR' and 'CHAR' are both accepted.
_FIELD_PAT = re.compile(r"@(\d+)\s+(\w+)\s+\$?CHAR(\d+)\.")

# SAS LABEL statement entry pattern:
#     NAME = 'label text with possible internal spaces and punctuation'
#
# Labels are single-quoted in all NHEFS/NHANES I files in the zip. A label may
# span multiple lines in the source, but pandas/Python sees it as a single
# logical match because we search across the whole LABEL block as a flat string.
_LABEL_PAT = re.compile(r"(\w+)\s*=\s*'([^']*)'")

# Block delimiters. We anchor INPUT on '@<digit>' and LABEL on '<NAME>\s*=' to
# avoid matching the SAS comment line
#     *** INPUT AND LABEL STATEMENTS FOR ... ***;
# that appears at the top of every file. A naive `LABEL\s+(.*?);` would capture
# everything from the 'LABEL' inside that comment up to the first semicolon
# (which is the end of the subsequent INPUT block), producing a body that
# contains field definitions rather than label assignments.
_INPUT_RE = re.compile(r"INPUT\s+(@\d+.*?);", re.DOTALL)
_LABEL_RE = re.compile(r"LABEL\s+(\w+\s*=.*?);", re.DOTALL)


@dataclass(frozen=True)
class FieldSpec:
    """Single parsed field from a SAS INPUT statement."""

    position: int  # 1-indexed SAS column position (matches the @N in the source)
    name: str
    width: int
    label: str = ""  # populated post-parse by joining with the LABEL block


@dataclass
class CodebookSpec:
    """Parsed contents of an entire '*.inputs.labels.txt' file."""

    source_path: Path
    fields: list[FieldSpec] = field(default_factory=list)
    labels: dict[str, str] = field(default_factory=dict)

    @property
    def colspecs(self) -> list[tuple[int, int]]:
        """0-indexed half-open column spans, ready for pandas.read_fwf."""
        return [(f.position - 1, f.position - 1 + f.width) for f in self.fields]

    @property
    def names(self) -> list[str]:
        """Field names in file order, ready for pandas.read_fwf."""
        return [f.name for f in self.fields]

    def __len__(self) -> int:
        return len(self.fields)


def parse_sas_input(text: str) -> list[FieldSpec]:
    """Parse the INPUT block of a SAS codebook source into FieldSpecs.

    Labels are left empty at this stage — call parse_codebook() to get a fully
    populated CodebookSpec with both positions and labels joined.

    Raises
    ------
    ValueError
        If no valid INPUT block is found in the source text.
    """
    match = _INPUT_RE.search(text)
    if match is None:
        raise ValueError("No INPUT block with leading '@<position>' found in source")
    body = match.group(1)
    return [
        FieldSpec(position=int(pos), name=name, width=int(width))
        for pos, name, width in _FIELD_PAT.findall(body)
    ]


def parse_sas_labels(text: str) -> dict[str, str]:
    """Parse the LABEL block of a SAS codebook source into {name: label}.

    Returns an empty dict if no LABEL block exists (some files, like
    hcfssup.inputs.labels.txt, may be input-only).
    """
    match = _LABEL_RE.search(text)
    if match is None:
        return {}
    body = match.group(1)
    return dict(_LABEL_PAT.findall(body))


def parse_codebook(path: str | Path) -> CodebookSpec:
    """Parse a full NHEFS '*.inputs.labels.txt' file.

    Joins the INPUT block with the LABEL block so each FieldSpec has its label
    attached. Fields without a label (e.g., BLANK filler fields) get an empty
    string.
    """
    path = Path(path)
    text = path.read_text(encoding="latin-1")

    fields = parse_sas_input(text)
    labels = parse_sas_labels(text)

    # Attach labels to fields (FieldSpec is frozen, so rebuild).
    fields_with_labels = [
        FieldSpec(
            position=f.position,
            name=f.name,
            width=f.width,
            label=labels.get(f.name, ""),
        )
        for f in fields
    ]

    return CodebookSpec(
        source_path=path,
        fields=fields_with_labels,
        labels=labels,
    )
