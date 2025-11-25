# 06_km_forest_plots.R
# Generating Kaplan-Meier survival curves and Cox forest plots

library(survminer)
library(survival)
library(ggplot2)
library(dplyr)

# TODO:
# - load prepared survival dataset
# - KM curves for:
#     surgery vs no surgery
#     chemo vs no chemo
#     radiation vs no radiation
#     AJCC stage
# - forest plot from Cox model
# - save all figures to results/

# Placeholder examples:

# luad <- readRDS("data_clean/luad_survival.rds")
# cox_model <- readRDS("results/model_summary/cox_model.rds")

# KM example:
# fit_surg <- survfit(Surv(OS_time_months, OS_event) ~ has_surgery, data = luad)
# ggsurvplot(fit_surg, data = luad, pval = TRUE, risk.table = TRUE)

# Forest plot example:
# ggforest(cox_model, data = luad)

# ggsave("results/km_plots/km_surgery.png", width = 8, height = 6, dpi = 120)
# ggsave("results/forest_plots/cox_forest.png", width = 8, height = 6, dpi = 120)

