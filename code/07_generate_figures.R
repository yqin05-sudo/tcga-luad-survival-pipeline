# ================================
# Generate 3 publication-ready figures:
#   1) Overall KM
#   2) Stage-grouped KM
#   3) Multivariable Cox Forest Plot
# ================================

library(survival)
library(survminer)
library(ggplot2)
library(dplyr)
library(forcats)
library(broom)
library(stringr)
library(ggtext)

#--------------------------------#
#  Load data
#--------------------------------#
luad <- readRDS("data_clean/luad.data.rds")

# Ensure factor levels
luad$gender     <- factor(luad$gender)
luad$smoking    <- factor(luad$smoking)
luad$stage_group <- factor(luad$stage_group, 
                           levels = c("I", "II", "III/IV"))
luad$surgery    <- factor(luad$surgery)
luad$chemo      <- factor(luad$chemo)
luad$radiation  <- factor(luad$radiation)

#--------------------------------#
#     1. Overall KM Curve
#--------------------------------#
km_fit_overall <- survfit(Surv(time_month, event_binary) ~ 1, data = luad)
png("results/km_plots/overall_km.png", width=900, height=650, res=120)
ggsurvplot(
  km_fit_overall,
  data = luad,
  conf.int = TRUE,
  risk.table = TRUE,
  surv.median.line = "hv",
  ggtheme = theme_minimal(base_size = 14),
  title = "Overall Survival — TCGA-LUAD (n = 487)",
  xlab = "Time (months)",
  ylab = "Overall survival probability"
)
dev.off()

#--------------------------------#
#     2. KM by Stage Group
#--------------------------------#
km_fit_stage <- survfit(Surv(time_month, event_binary) ~ stage_group, data = luad)
png("results/km_plots/stage_km.png", width=1000, height=700, res=120)
ggsurvplot(
  km_fit_stage,
  data = luad,
  conf.int = FALSE,
  pval = TRUE,
  risk.table = TRUE,     # ★★★ 关键参数：添加风险表
  risk.table.height = 0.30,
  risk.table.y.text.col = TRUE,
  risk.table.y.text = TRUE,
  xlab = "Time (Months)",
  ylab = "Survival Probability",
  title = "Survival by Stage Group — TCGA-LUAD (n = 487)",
  legend.title = "Stage Group",
  palette = c("#1B9E77", "#D95F02", "#7570B3"),
  ggtheme = theme_minimal(base_size = 14)
)
dev.off()

#---------------------------------------------------#
#     3. Multivariable Cox Model + Forest Plot
#---------------------------------------------------#
cox_model <- coxph(
  Surv(time_month, event_binary) ~ age + gender + smoking + stage_group +
    surgery + chemo + radiation,
  data = luad
)
png("results/forest_plots/cox_forest.png",
    width = 1100, height = 700, res = 130)
print(
  ggforest(
    cox_model,
    data = model.frame(cox_model),
    main = "Multivariable Cox Hazard Ratios – TCGA-LUAD (n = 487)",
    fontsize = 0.9
  ) +
    theme(
      plot.title = element_text(size = 14, face = "bold"),
      axis.title = element_text(size = 12),
      axis.text = element_text(size = 10)
    )
)
dev.off()

# Extract table for forest plot
cox_summary <- summary(cox_model)
df_cox <- data.frame(
  Variable = rownames(cox_summary$coefficients),
  HR = exp(cox_summary$coefficients[, "coef"]),
  Lower = exp(cox_summary$conf.int[, "lower .95"]),
  Upper = exp(cox_summary$conf.int[, "upper .95"]),
  Pvalue = cox_summary$coefficients[, "Pr(>|z|)"]
)
