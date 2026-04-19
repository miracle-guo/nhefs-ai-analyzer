"""
Survey design utilities for NHEFS weighted analyses.

NHEFS inherits its complex survey design from NHANES I (stratified
multistage cluster sample). The vital file (n92vitl.txt) provides both
original and revised strata/PSU variables; sample weights come from
DU4800 or can be looked up in the V&HS Series 2 Report 121.

This module provides:
  - extract_design_vars(): pull strata, PSU, and sample weight columns
  - fit_survey_ols(): OLS with linearized standard errors (robust to
    clustering) — a practical approximation when the full SVY machinery
    isn't available in statsmodels

For full complex-survey inference (calibrated weights, replicate
variance estimation), consider the `samplics` Python package or
equivalent. This module covers the 80% case.
"""

from __future__ import annotations

import numpy as np
import pandas as pd
import statsmodels.api as sm


def extract_design_vars(
    df_vitl: pd.DataFrame,
    df_du4800: pd.DataFrame | None = None,
    *,
    strata_col: str = "RVSTRTA1",
    psu_col: str = "REVPSU1",
    weight_col: str = "N1LB0283",
) -> pd.DataFrame:
    """
    Build a design-variable DataFrame keyed by seqn.

    Parameters
    ----------
    df_vitl
        NHEFS vital file (must have 'seqn' already normalized).
        Provides strata and PSU.
    df_du4800
        Optional NHANES I DU4800 file (must have 'seqn' normalized).
        Provides sample weights. If None, weights are set to 1.0
        (unweighted analysis).
    strata_col
        Strata column in df_vitl. Default: RVSTRTA1 (revised 22-stratum).
    psu_col
        PSU column in df_vitl. Default: REVPSU1 (revised 3-level PSU).
    weight_col
        Sample weight column in df_du4800. Default: N1LB0283
        ("WEIGHTS-ALL SAMPLE PERSONS-LOCATIONS ...").

    Returns
    -------
    pd.DataFrame
        Columns: seqn, strata, psu, sample_weight. All numeric.
    """
    design = df_vitl[["seqn"]].copy()
    design["strata"] = pd.to_numeric(
        df_vitl[strata_col].astype(str).str.strip(), errors="coerce"
    )
    design["psu"] = pd.to_numeric(
        df_vitl[psu_col].astype(str).str.strip(), errors="coerce"
    )

    if df_du4800 is not None and weight_col in df_du4800.columns:
        wt = df_du4800[["seqn", weight_col]].copy()
        wt["sample_weight"] = pd.to_numeric(
            wt[weight_col].astype(str).str.strip(), errors="coerce"
        )
        design = design.merge(wt[["seqn", "sample_weight"]], on="seqn", how="left")
    else:
        design["sample_weight"] = 1.0

    return design


def fit_survey_ols(
    df: pd.DataFrame,
    formula: str,
    *,
    weight_col: str = "sample_weight",
    cluster_col: str = "psu",
) -> sm.regression.linear_model.RegressionResultsWrapper:
    """
    Fit WLS with cluster-robust standard errors (HC1 by PSU).

    This is the practical approximation for survey-weighted OLS when full
    SVY linearized variance estimation isn't available. The weights scale
    the objective function; clustering on PSU adjusts the SEs for the
    multistage design.

    Parameters
    ----------
    df
        Analysis DataFrame with outcome, predictors, weight, and cluster columns.
    formula
        Patsy formula string (e.g., 'wt82_71 ~ qsmk + age + C(sex)').
    weight_col
        Column with sample weights.
    cluster_col
        Column defining clusters for robust SEs.

    Returns
    -------
    statsmodels RegressionResults with cluster-robust SEs.
    """
    import statsmodels.formula.api as smf

    # Drop rows with missing weight or cluster
    subset = df.dropna(subset=[weight_col, cluster_col]).copy()

    # Fit WLS
    model = smf.wls(formula, data=subset, weights=subset[weight_col])
    result = model.fit(
        cov_type="cluster",
        cov_kwds={"groups": subset[cluster_col].astype(int)},
    )
    return result


def fit_survey_logit(
    df: pd.DataFrame,
    formula: str,
    *,
    weight_col: str = "sample_weight",
    cluster_col: str = "psu",
):
    """
    Fit weighted logistic regression with cluster-robust SEs.

    Uses GLM with Binomial family and frequency weights, then applies
    cluster-robust covariance estimation.
    """
    import statsmodels.formula.api as smf

    subset = df.dropna(subset=[weight_col, cluster_col]).copy()
    model = smf.glm(
        formula,
        data=subset,
        family=sm.families.Binomial(),
        freq_weights=subset[weight_col],
    )
    result = model.fit(
        cov_type="cluster",
        cov_kwds={"groups": subset[cluster_col].astype(int)},
    )
    return result
