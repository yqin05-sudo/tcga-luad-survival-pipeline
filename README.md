# TCGA-LUAD Survival Analysis Pipeline
A fully reproducible pipeline for cleaning, processing, modeling, and visualizing survival outcomes in **TCGA-LUAD (lung adenocarcinoma)**.  
Includes complete data preparation, modeling (Cox PH), Kaplan–Meier visualizations, and publication-ready figures.

---

## 📌 1. Project Overview
This repository provides a transparent and reproducible workflow for:

- Cleaning TCGA-LUAD clinical data  
- Constructing analysis-ready survival tables  
- Building multivariable Cox proportional hazards models  
- Generating Kaplan–Meier curves (overall + stratified)  
- Producing publication-quality forest plots  
- Saving all outputs into organized folders  

This pipeline is suitable for:
- Cancer bioinformatics research  
- Clinical collaboration  
- AI/ML oncology model development  
- Educational and training use  

---

## 📁 2. Project Structure


---

## 📊 3. Key Results

### **Kaplan–Meier: Overall Survival**
![Overall KM](results/km_plots/overall_km.png)

---

### **Kaplan–Meier by Stage Group (I, II, III/IV)**
![Stage KM](results/km_plots/stage_km_487.png)

---

### **Multivariable Cox Model (Forest Plot)**
![Forest](results/forest_plots/cox_forest.png)

---

## 🧠 4. Cox Model Summary

- **N = 487 patients**
- **Events = 171**
- **Predictors included:**
  - age  
  - gender  
  - smoking  
  - stage_group  
  - surgery  
  - chemo  
  - radiation  

Full summary available at:  
➡️ `results/model_summary/cox_summary.txt`

Saved model object:  
➡️ `results/model_summary/cox_model.rds`

---

## 🚀 5. Quick Start

### **Install required R packages**
```r
install.packages(c("survival", "survminer", "tidyverse"))
source("code/06_generate_figures.R")
source("code/07_export_results.R")
