"""
NHANES I codebook importer — parse CDC 'DU####.sas' files into machine-readable
field specs.

NHANES I baseline (1971-75) ships its fixed-width data files with full SAS
programs that define the column layout, variable labels, and (in the
sas_formatted/ variant) value-label formats via PROC FORMAT. The format is
structurally different from the NHEFS followup release:

    NHEFS           : INPUT @<pos> <NAME> $CHAR<width>.
                      LABEL <NAME> = '<single-quoted text>'

    NHANES I        : INPUT
                         <NAME> <start>-<end>     -- multi-column field
                         <NAME> <col>             -- single-column field
                      LABEL
                         <NAME> = "<double-quoted text>"

Each DU####.sas file represents one examination module (anthropometry, medical
history, lab values, etc.). The companion DU####_F.sas file under sas_formatted/
adds PROC FORMAT / VALUE blocks that map coded values to human-readable strings
(e.g., BM0019F: 1='Male', 2='Female'). This importer reads both forms.

NHANES I labels are truncated at ~40 characters with a trailing "..." in the
SAS source. Full labels live in the PDF codebooks under docs/. The truncated
form is sufficient for variable discovery and the hand-curated Phase-1
registry; longer descriptions can be added manually when needed.

Primary key: NHANES I uses 'SEQN' (5 characters at columns 1-5) in every
DU####.sas file. NHEFS later renamed this to 'SEQNUM'. The two fields carry
identical subject IDs and join 1:1; the renaming is cosmetic.
"""

from __future__ import annotations

import re
from dataclasses import dataclass, field
from pathlib import Path


# NHANES I INPUT entry: NAME followed by a column range or single column.
#
#   SEQN 1-5            -> (SEQN, 1, 5)
#   N1BM0010 10         -> (N1BM0010, 10, 10)
#   N1BM0017 17-18      -> (N1BM0017, 17, 18)
#
# Matches field entries that appear on their own line inside the INPUT block.
# Column positions are 1-indexed and inclusive on both ends.
_INPUT_FIELD_PAT = re.compile(
    r"^\s*(\w+)\s+(\d+)(?:-(\d+))?\s*$",
    re.MULTILINE,
)

# NHANES I LABEL entry: NAME = "double-quoted label text"
#
#   N1BM0255 = "WEIGHT (IN POUNDS-XXX.XX-DECIMAL NOT ..."
#
# Labels may be truncated with "..." but that's part of the string literal,
# not a regex concern.
_LABEL_PAT = re.compile(r'(\w+)\s*=\s*"([^"]*)"')

# PROC FORMAT value block: VALUE <FMTNAME>
#     <coded_value> = '<label>'
#     ...
#     ;
#
# The format name convention in the _F.sas files is <prefix><code>F, e.g.:
#   N1BM0019  -->  BM0019F   (drop "N1", suffix "F")
#
# Inside the block, each line is:
#   <value_code>  =  '<label text>'
#
# Values can be integers, codes like "00", or ranges; we capture them as
# strings so the caller can interpret them.
_FORMAT_BLOCK_PAT = re.compile(
    r"VALUE\s+(\w+)\s*\n(.*?);",
    re.DOTALL,
)
_FORMAT_ENTRY_PAT = re.compile(r"(\S+)\s*=\s*'([^']*)'")


@dataclass(frozen=True)
class NhanesFieldSpec:
    """Single parsed field from a NHANES I INPUT statement."""

    name: str
    start: int  # 1-indexed, inclusive
    end: int  # 1-indexed, inclusive (equal to start for single-column fields)
    label: str = ""

    @property
    def width(self) -> int:
        return self.end - self.start + 1


@dataclass
class NhanesCodebookSpec:
    """Parsed contents of a DU####.sas file (optionally with PROC FORMAT)."""

    source_path: Path
    fields: list[NhanesFieldSpec] = field(default_factory=list)
    labels: dict[str, str] = field(default_factory=dict)
    value_formats: dict[str, dict[str, str]] = field(default_factory=dict)

    @property
    def colspecs(self) -> list[tuple[int, int]]:
        """0-indexed half-open spans ready for pandas.read_fwf."""
        return [(f.start - 1, f.end) for f in self.fields]

    @property
    def names(self) -> list[str]:
        return [f.name for f in self.fields]

    def __len__(self) -> int:
        return len(self.fields)


def _extract_block(text: str, keyword: str) -> str | None:
    """Find the SAS block starting at KEYWORD and ending at a lone ';'.

    Both INPUT and LABEL blocks in NHANES I SAS files terminate with a
    semicolon alone on its own line. We locate the keyword at the start of a
    line, then grab everything up to the next such terminator.
    """
    # \b ensures we match the keyword as a whole word and won't pick up e.g.
    # "LABEL" inside a comment string. The keyword appears at the start of a
    # line in every file in the zip.
    start_match = re.search(rf"^\s*{keyword}\b", text, re.MULTILINE)
    if start_match is None:
        return None
    rest = text[start_match.end():]
    # Find the next ';' that sits on its own (possibly indented) line.
    end_match = re.search(r"\n\s*;\s*$", rest, re.MULTILINE)
    if end_match is None:
        return None
    return rest[: end_match.start()]


def parse_sas_input(text: str) -> list[NhanesFieldSpec]:
    """Parse the INPUT block of a DU####.sas file."""
    block = _extract_block(text, "INPUT")
    if block is None:
        raise ValueError("No INPUT block found in SAS source")
    fields = []
    for match in _INPUT_FIELD_PAT.finditer(block):
        name = match.group(1)
        start = int(match.group(2))
        end = int(match.group(3)) if match.group(3) else start
        fields.append(NhanesFieldSpec(name=name, start=start, end=end))
    return fields


def parse_sas_labels(text: str) -> dict[str, str]:
    """Parse the LABEL block of a DU####.sas file.

    NHANES I uses double-quoted labels. Returns an empty dict if no LABEL
    block is present (some modules may ship without one).
    """
    block = _extract_block(text, "LABEL")
    if block is None:
        return {}
    return dict(_LABEL_PAT.findall(block))


def parse_proc_formats(text: str) -> dict[str, dict[str, str]]:
    """Parse all PROC FORMAT VALUE blocks in a SAS source.

    Only present in the sas_formatted/ variants of the NHANES I scripts.
    Returns a nested dict: {format_name: {coded_value: label}}. The caller
    is responsible for mapping a field name to its format (by convention
    e.g. N1BM0019 -> BM0019F).
    """
    formats: dict[str, dict[str, str]] = {}
    for block_match in _FORMAT_BLOCK_PAT.finditer(text):
        fmt_name = block_match.group(1)
        body = block_match.group(2)
        formats[fmt_name] = dict(_FORMAT_ENTRY_PAT.findall(body))
    return formats


def parse_codebook(path: str | Path) -> NhanesCodebookSpec:
    """Parse a full DU####.sas (or DU####_F.sas) file.

    If the file contains PROC FORMAT blocks (typically only the _F.sas
    variants), they are parsed and attached. Otherwise value_formats is
    empty.
    """
    path = Path(path)
    text = path.read_text(encoding="latin-1")

    input_fields = parse_sas_input(text)
    labels = parse_sas_labels(text)
    value_formats = parse_proc_formats(text)

    # Attach labels to fields.
    fields_with_labels = [
        NhanesFieldSpec(
            name=f.name,
            start=f.start,
            end=f.end,
            label=labels.get(f.name, ""),
        )
        for f in input_fields
    ]

    return NhanesCodebookSpec(
        source_path=path,
        fields=fields_with_labels,
        labels=labels,
        value_formats=value_formats,
    )


def field_format_name(variable_name: str) -> str:
    """Infer the PROC FORMAT name for a NHANES I variable.

    By CDC convention, variable 'N1BM0019' uses format 'BM0019F' — drop the
    'N1' prefix, append 'F'. Works for N1AH####, N1BM####, N1GM####, N1ME####,
    etc.
    """
    core = variable_name.removeprefix("N1")
    return f"{core}F"
