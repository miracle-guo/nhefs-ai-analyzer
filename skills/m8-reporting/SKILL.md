# M8 — Reporting (Analysis Report Generation)

> **Triggers**: "generate report", "create report", "analysis report", "Word document", "生成报告", "写报告", "导出报告". Use when user wants a formatted summary of the analysis.

## Purpose
Generate a formatted analysis report (Word .docx) summarizing the complete analysis process. The report is based on the golden_path steps in `workspace/analysis_plan.json` and includes research context, methods, results, and interpretations.

## Skill Metadata
- **Type**: Output Generation
- **user-invocable**: true
- **Triggers**: "generate report", "create report", "生成报告", "写报告", "export report"

## When to Use
- User explicitly requests a report at any analysis stage
- After the final modeling step is committed (suggest generating report)

## Inputs
- `workspace/analysis_plan.json` — golden_path steps, research question, plan structure
- `snapshots/` — intermediate dataset snapshots (for sample sizes, descriptives)
- Generated code files — for methods documentation
- M7 validation reports — for quality assurance section

## Report Structure

The generated report follows this template:

### 1. Executive Summary
- Research question (from analysis_plan.json)
- Key findings (from M5 results)
- Sample size and data sources

### 2. Research Question & Background
- Full research question
- Study design (cross-sectional / longitudinal)

### 3. Data Sources & Sample Description
- Datasets used (NHEFS vital, NHANES I anthropometry, NHEFS 1982 interview, etc.)
- Sample selection criteria
- Final analytic sample size

### 4. Variable Definitions
- Outcome variables (from M1)
- Exposure variables (from M1)
- Covariates and controls (from M1)
- Composite indicators used (from M6)

### 5. Data Processing & Cleaning
- Data harmonization steps (from M2)
- Missing data analysis and handling (from M3)
- Variable transformations (from M4)

### 6. Statistical Methods
- Model specification (from M5)
- Survey weights applied
- Software: Python (pandas + statsmodels)

### 7. Results
- Descriptive statistics table
- Model results table (coefficients, CIs, p-values)
- Subgroup analyses (if any)
- **Figures**: All graphs and visualizations generated during the analysis (e.g., distribution plots, correlation heatmaps, forest plots, residual plots) must be included in this section. Embed saved image files (.png/.jpg) from `workspace/artifacts/` or `snapshots/` using `doc.add_picture()`.

### 8. Validation & Quality Checks
- M7 validation summary for each step
- Any warnings or issues noted

### 9. Appendix
- Full pipeline code reference (from M0 compile_pipeline)
- Variable codebook excerpt

## Code Template

```python
from docx import Document
from docx.shared import Inches, Pt
from docx.enum.text import WD_ALIGN_PARAGRAPH
import json
from datetime import datetime

def generate_report(plan: dict, detail_level: str = "full") -> str:
    """
    Generate analysis report as Word document.

    detail_level: "brief" (executive summary + results only) or "full" (all sections)
    """
    doc = Document()

    # Title
    title = doc.add_heading("NHEFS Analysis Report", level=0)
    title.alignment = WD_ALIGN_PARAGRAPH.CENTER

    # Metadata
    doc.add_paragraph(f"Research Question: {plan['research_question']}")
    doc.add_paragraph(f"Generated: {datetime.now().strftime('%Y-%m-%d %H:%M')}")
    doc.add_paragraph(f"Analysis Plan Version: {plan['version']}")

    # Section 1: Executive Summary
    doc.add_heading("1. Executive Summary", level=1)
    doc.add_paragraph(f"This report summarizes the analysis addressing: {plan['research_question']}")

    # Section 2-9: Generate based on golden_path steps
    golden_steps = []
    for phase in plan["phases"]:
        for task in phase["tasks"]:
            for step in task["steps"]:
                if step["id"] in plan["golden_path"]:
                    golden_steps.append((task, step))

    # Group steps by module for section generation
    m1_steps = [(t, s) for t, s in golden_steps if t["module_id"] == "M1"]
    m2_steps = [(t, s) for t, s in golden_steps if t["module_id"] == "M2"]
    m3_steps = [(t, s) for t, s in golden_steps if t["module_id"] == "M3"]
    m4_steps = [(t, s) for t, s in golden_steps if t["module_id"] == "M4"]
    m5_steps = [(t, s) for t, s in golden_steps if t["module_id"] == "M5"]

    if detail_level == "full":
        # Section 2: Research Question
        doc.add_heading("2. Research Question & Background", level=1)
        doc.add_paragraph(plan["research_question"])

        # Section 3: Data Sources
        doc.add_heading("3. Data Sources & Sample Description", level=1)
        for task, step in m2_steps:
            doc.add_paragraph(f"- {step['type']}: {json.dumps(step['config'])}")

        # Section 4: Variables
        doc.add_heading("4. Variable Definitions", level=1)
        for task, step in m1_steps:
            doc.add_paragraph(f"- {step['type']}: {json.dumps(step['config'])}")

        # Section 5: Processing
        doc.add_heading("5. Data Processing & Cleaning", level=1)
        for task, step in m3_steps + m4_steps:
            doc.add_paragraph(f"- [{task['module_id']}] {step['type']}")

        # Section 6: Methods
        doc.add_heading("6. Statistical Methods", level=1)
        for task, step in m5_steps:
            doc.add_paragraph(f"- Model: {step['config']}")

    # Section 7: Results (always included)
    doc.add_heading("7. Results", level=1)
    doc.add_paragraph("[Results extracted from M5 model outputs]")

    # Section 8: Validation (always included)
    doc.add_heading("8. Validation & Quality Checks", level=1)
    doc.add_paragraph("[M7 validation summaries for each step]")

    if detail_level == "full":
        # Section 9: Appendix
        doc.add_heading("9. Appendix", level=1)
        doc.add_paragraph("See workspace/artifacts/full_pipeline.py and workspace/artifacts/full_pipeline.do for complete code.")

    # Save — write into the step's own output directory
    import sys
    sys.path.insert(0, "utils")
    from decision_logger import DecisionLogger
    dl = DecisionLogger(".")
    dl.make_step_dir(step_id)
    output_path = f"workspace/artifacts/{step_id}/analysis_report.docx"
    doc.save(output_path)
    print(f"  Report saved: {output_path}")
    return output_path
```

## Detail Levels

| Level | Sections Included |
|-------|-------------------|
| **brief** | 1 (Executive Summary), 7 (Results), 8 (Validation) |
| **full** | All 9 sections |

## Important Rules
1. Report content is derived from actual executed steps — never fabricate results.
2. All statistics must come from code execution outputs, not LLM generation.
3. Always include the M7 validation summary — researchers need to see data quality.
4. **All graphs generated during the analysis pipeline (M2–M5) MUST be included in the final report.** Scan `workspace/artifacts/{step_id}/` for each golden-path step for saved image files (.png/.jpg) and embed them in the relevant section using `doc.add_picture(path, width=Inches(5.5))`. If no images are found, note this in the report.
5. Present the report to the user for review before saving.
6. If python-docx is not available, fall back to generating a well-formatted Markdown report (embed images via `![caption](path)`).


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
