# TCGA-LUAD Survival Analysis Pipeline
Author: Yunlong Qin, PhD  
Project: Lung Adenocarcinoma Survival — TCGA LUAD  
Version: v1.0  
Date: 2025

---

## 1. Overview
This repository implements a complete and reproducible pipeline for processing
TCGA-LUAD clinical data, constructing survival datasets, and generating
publication-ready survival analysis outputs:

- Kaplan–Meier curves (overall + by stage)
- Multivariable Cox proportional hazards model
- Forest plot of hazard ratios
- Reproducible cleaned dataset + model outputs

---

## 2. Data Source
Data used in this project were downloaded from the  
**NCI Genomic Data Commons (GDC)**:

- Project: **TCGA-LUAD**
- Data Type: Clinical
- Files: 
  - cases.json
  - clinical.cart.*
  - clinical supplement (multiple layers: demographics, diagnoses, treatments)

---

## 3. Directory Structure


---

## 4. Clinical Data Cleaning Summary

### Variables retained:
- time_month  
- event_binary (1 = death, 0 = censored)  
- age (continuous)  
- gender (female/male)  
- smoking (Never/Ever)  
- stage_group (I, II, III/IV)  
- surgery (Yes/No)  
- chemo (Yes/No)  
- radiation (Yes/No)

### Final dataset size:
- **n = 487**
- **events = 171**

---

## 5. Statistical Methods

### 5.1 Kaplan–Meier Estimation
Generated curves:
- Overall KM (n=487)
- Stage-stratified KM (I vs II vs III/IV)

With 95% CI, risk table, and p-value.

### 5.2 Cox Proportional Hazards Model
Model:


Outputs include:
- HR
- 95% CI
- Wald p-values
- Global likelihood ratio p-value

### 5.3 Model Diagnostics
- Sample size: 487
- Events: 171
- No proportional hazards violations observed for major predictors

---

## 6. Generated Figures

### 6.1 Kaplan–Meier Plots
Saved in:


Files:
- overall_km.png
- stage_km.png

### 6.2 Cox Forest Plot
Saved in:


Enhanced with:
- bold labels
- clean theme
- HR + CI formatting
- log-scale axis

---

## 7. Model Summary Files

Stored in


Contents:
- **cox_model.rds**
- **cox_summary.txt**
- **README.md** (auto-generated)

---

## 8. Reproducibility Instructions

To reproduce the entire pipeline:

```r
# Install dependencies
install.packages(c("tidyverse", "survival", "survminer", "jsonlite"))

# Run all scripts
source("code/01_parse_json.R")
source("code/02_clean_variables.R")
source("code/07_generate_figures.R")
