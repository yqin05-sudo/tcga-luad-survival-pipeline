# 05_cox_model.R
# Cox proportional hazards modeling for LUAD

library(survival)
library(tidyverse)

# TODO:
# - load cleaned survival dataset
# - fit Cox model (fixed effects or time-dependent if desired)
# - check PH assumptions
# - extract and save model object
# - prepare summary tables for visualization

# Placeholder example:
# luad <- readRDS("data_clean/luad_survival.rds")
#
# cox_model <- coxph(
#   Surv(OS_time_months, OS_event) ~ 
#     age_at_index +
#     gender +
#     ajcc_pathologic_stage +
#     has_surgery +
#     has_chemotherapy +
#     has_radiotherapy,
#   data = luad
# )
#
# # PH assumption test
# ph_test <- cox.zph(cox_model)
# print(ph_test)
#
# saveRDS(cox_model, "results/model_summary/cox_model.rds")
# writeLines(capture.output(summary(cox_model)), 
#            "results/model_summary/cox_summary.txt")

