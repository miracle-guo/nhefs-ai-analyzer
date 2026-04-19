"""
Causal inference methods for NHEFS analyses.

Implements the key methods from Hernán/Robins *Causal Inference: What If*:
  - Inverse Probability Weighting (IPW) for point exposures (Ch 12)
  - Standardization / parametric g-formula (Ch 13)
  - IP-weighted survival curves (Ch 17)
  - Cox proportional hazards (baseline)

These are designed to work with the Phase-1 analytic file built by
tests/test_nhefs_smoking_cessation.py::build_phase1_analytic_file().
"""

from __future__ import annotations

import numpy as np
import pandas as pd
import statsmodels.api as sm
import statsmodels.formula.api as smf


# ── IPW for point exposures (Hernán Ch 12) ────────────────────────────

def estimate_propensity_scores(
    df: pd.DataFrame,
    treatment: str,
    confounders: list[str],
) -> pd.Series:
    """
    Estimate P(treatment=1 | confounders) via logistic regression.

    Returns propensity scores (predicted probabilities) as a Series
    aligned to df's index.
    """
    formula = f"{treatment} ~ {' + '.join(confounders)}"
    subset = df.dropna(subset=[treatment] + confounders).copy()
    model = smf.logit(formula, data=subset).fit(disp=False)
    subset["ps"] = model.predict()
    return subset["ps"]


def compute_ipw_weights(
    df: pd.DataFrame,
    treatment: str,
    confounders: list[str],
    *,
    stabilized: bool = True,
    trim_percentile: float = 1.0,
) -> pd.Series:
    """
    Compute inverse probability weights for a binary treatment.

    For treated (A=1):  w = 1/P(A=1|L)
    For untreated (A=0): w = 1/P(A=0|L) = 1/(1-P(A=1|L))

    If stabilized=True (recommended), multiply by marginal probability:
      For treated:   sw = P(A=1) / P(A=1|L)
      For untreated: sw = P(A=0) / (1 - P(A=1|L))

    Parameters
    ----------
    trim_percentile
        Trim extreme weights at this percentile from both tails.
        Default 1.0 = trim at 1st and 99th percentile.
    """
    subset = df.dropna(subset=[treatment] + confounders).copy()
    ps = estimate_propensity_scores(subset, treatment, confounders)

    treated = subset[treatment] == 1
    weights = pd.Series(np.nan, index=subset.index)

    if stabilized:
        p_treated = subset[treatment].mean()
        weights[treated] = p_treated / ps[treated]
        weights[~treated] = (1 - p_treated) / (1 - ps[~treated])
    else:
        weights[treated] = 1 / ps[treated]
        weights[~treated] = 1 / (1 - ps[~treated])

    # Trim extreme weights
    if trim_percentile > 0:
        lo = weights.quantile(trim_percentile / 100)
        hi = weights.quantile(1 - trim_percentile / 100)
        n_trimmed = ((weights < lo) | (weights > hi)).sum()
        weights = weights.clip(lower=lo, upper=hi)
        if n_trimmed > 0:
            print(f"  IPW: trimmed {n_trimmed} extreme weights to [{lo:.2f}, {hi:.2f}]")

    return weights


def ipw_estimate(
    df: pd.DataFrame,
    outcome: str,
    treatment: str,
    confounders: list[str],
    *,
    stabilized: bool = True,
) -> dict:
    """
    Estimate the average treatment effect (ATE) using IPW.

    Returns a dict with:
      - ate: point estimate
      - treated_mean: IP-weighted mean outcome among treated
      - control_mean: IP-weighted mean outcome among untreated
      - weights_summary: descriptive stats of the IP weights
    """
    subset = df.dropna(subset=[outcome, treatment] + confounders).copy()
    weights = compute_ipw_weights(subset, treatment, confounders, stabilized=stabilized)

    treated = subset[treatment] == 1
    y = subset[outcome]

    # IP-weighted means
    treated_mean = np.average(y[treated], weights=weights[treated])
    control_mean = np.average(y[~treated], weights=weights[~treated])
    ate = treated_mean - control_mean

    # Also fit a marginal structural model: WLS of outcome ~ treatment
    # with IP weights, to get standard errors
    X = sm.add_constant(subset[[treatment]].astype(float))
    msm = sm.WLS(y.astype(float), X, weights=weights).fit(
        cov_type="HC1"  # robust SEs
    )

    return {
        "ate": ate,
        "ate_se": msm.bse[treatment],
        "ate_pvalue": msm.pvalues[treatment],
        "ate_ci": (msm.conf_int().loc[treatment, 0], msm.conf_int().loc[treatment, 1]),
        "treated_mean": treated_mean,
        "control_mean": control_mean,
        "n_treated": int(treated.sum()),
        "n_control": int((~treated).sum()),
        "weights_mean": weights.mean(),
        "weights_std": weights.std(),
        "weights_min": weights.min(),
        "weights_max": weights.max(),
    }


# ── Standardization / parametric g-formula (Hernán Ch 13) ────────────

def standardization_estimate(
    df: pd.DataFrame,
    outcome: str,
    treatment: str,
    confounders: list[str],
) -> dict:
    """
    Estimate ATE via standardization (parametric g-formula).

    Fits an outcome model: E[Y | A, L] = b0 + b1*A + b2*L + ...
    Then predicts counterfactuals:
      - E[Y | A=1, L] for everyone (treated potential outcome)
      - E[Y | A=0, L] for everyone (untreated potential outcome)
    ATE = mean(E[Y|A=1,L]) - mean(E[Y|A=0,L])
    """
    formula = f"{outcome} ~ {treatment} + {' + '.join(confounders)}"
    subset = df.dropna(subset=[outcome, treatment] + confounders).copy()

    model = smf.ols(formula, data=subset).fit()

    # Counterfactual predictions
    df_a1 = subset.copy()
    df_a1[treatment] = 1
    df_a0 = subset.copy()
    df_a0[treatment] = 0

    y_a1 = model.predict(df_a1)
    y_a0 = model.predict(df_a0)

    ate = y_a1.mean() - y_a0.mean()

    return {
        "ate": ate,
        "mean_y_a1": y_a1.mean(),
        "mean_y_a0": y_a0.mean(),
        "n": len(subset),
        "model_r2": model.rsquared,
        "note": "SEs require bootstrapping (not implemented in this version)",
    }


# ── Survival analysis (Hernán Ch 17) ─────────────────────────────────

def build_survival_data(
    df: pd.DataFrame,
    *,
    death_col: str = "CVITALST",
    death_year_col: str = "DTDTHYR",
    baseline_year_col: str = "NEXAMYR",
) -> pd.DataFrame:
    """
    Build time-to-event variables from NHEFS vital + mortality data.

    Returns df with added columns:
      - death_flag: 1 if deceased, 0 if alive
      - followup_years: years from baseline exam to death or censoring (1992)
    """
    df = df.copy()

    # death_flag: CVITALST != 1 means some form of death
    death_status = pd.to_numeric(df[death_col].astype(str).str.strip(), errors="coerce")
    df["death_flag"] = (death_status != 1).astype(float)
    df.loc[death_status.isna(), "death_flag"] = np.nan

    # Death year (2-digit → 4-digit)
    death_yr = pd.to_numeric(df[death_year_col].astype(str).str.strip(), errors="coerce")
    death_yr = death_yr + 1900  # 85 → 1985

    # Baseline exam year (2-digit → 4-digit)
    exam_yr = pd.to_numeric(df[baseline_year_col].astype(str).str.strip(), errors="coerce")
    exam_yr = exam_yr + 1900  # 73 → 1973

    # Follow-up time: death year - exam year, or censor at 1992
    df["followup_years"] = np.where(
        df["death_flag"] == 1,
        death_yr - exam_yr,
        1992 - exam_yr,  # administrative censoring at end of study
    )

    # Sanity: clamp negative followup (shouldn't happen but defensive)
    df["followup_years"] = df["followup_years"].clip(lower=0)

    return df


def kaplan_meier(
    df: pd.DataFrame,
    time_col: str = "followup_years",
    event_col: str = "death_flag",
    group_col: str | None = None,
) -> pd.DataFrame:
    """
    Compute Kaplan-Meier survival estimates.

    Returns a DataFrame with columns: time, n_risk, n_events, survival, [group].
    If group_col is provided, computes separate KM curves per group.
    """
    results = []

    groups = [None] if group_col is None else sorted(df[group_col].dropna().unique())

    for grp in groups:
        if grp is not None:
            sub = df[df[group_col] == grp].dropna(subset=[time_col, event_col])
        else:
            sub = df.dropna(subset=[time_col, event_col])

        times = sorted(sub[time_col].unique())
        survival = 1.0

        for t in times:
            at_risk = (sub[time_col] >= t).sum()
            events = ((sub[time_col] == t) & (sub[event_col] == 1)).sum()
            if at_risk > 0:
                survival *= (1 - events / at_risk)
            row = {"time": t, "n_risk": at_risk, "n_events": events, "survival": survival}
            if group_col:
                row["group"] = grp
            results.append(row)

    return pd.DataFrame(results)


def fit_cox_ph(
    df: pd.DataFrame,
    time_col: str = "followup_years",
    event_col: str = "death_flag",
    covariates: list[str] | None = None,
) -> dict:
    """
    Fit a Cox proportional hazards model using lifelines (if available)
    or a simplified parametric approximation.

    Returns a dict with hazard ratios, CIs, and p-values.
    """
    try:
        from lifelines import CoxPHFitter

        subset = df.dropna(subset=[time_col, event_col] + (covariates or []))
        cph = CoxPHFitter()
        fit_cols = [time_col, event_col] + (covariates or [])
        cph.fit(subset[fit_cols].astype(float), duration_col=time_col, event_col=event_col)

        summary = cph.summary
        return {
            "method": "CoxPH (lifelines)",
            "n": len(subset),
            "n_events": int(subset[event_col].sum()),
            "hazard_ratios": summary["exp(coef)"].to_dict(),
            "p_values": summary["p"].to_dict(),
            "ci_lower": summary["exp(coef) lower 95%"].to_dict(),
            "ci_upper": summary["exp(coef) upper 95%"].to_dict(),
            "concordance": cph.concordance_index_,
        }
    except ImportError:
        # Fallback: logistic regression as a rough approximation
        print("  lifelines not installed; using logistic regression as Cox PH approximation")
        subset = df.dropna(subset=[time_col, event_col] + (covariates or []))
        formula = f"{event_col} ~ {' + '.join(covariates or [])}"
        model = smf.logit(formula, data=subset.astype(float)).fit(disp=False)

        return {
            "method": "Logistic (Cox PH approximation — install lifelines for real Cox)",
            "n": len(subset),
            "n_events": int(subset[event_col].sum()),
            "odds_ratios": np.exp(model.params).to_dict(),
            "p_values": model.pvalues.to_dict(),
        }
