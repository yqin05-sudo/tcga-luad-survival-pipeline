# TCGA-LUAD Survival Modeling Pipeline  
End-to-End Clinical Data Processing, Variable Engineering, and Survival Analysis for TCGA Lung Adenocarcinoma (LUAD)

This repository contains a complete workflow for building a reproducible **survival modeling pipeline** using data from the **NCI Genomic Data Commons (GDC)**.  
It includes data preprocessing, variable harmonization, engineered treatment indicators, survival endpoint generation, Cox modeling, visualization, and an optional **Shiny app** for interactive prediction.

---

## 📌 Project Highlights

- 🔍 **585 LUAD cases** with harmonized clinical variables  
- 🧬 Full **TCGA/GDC** JSON → tidy tibble conversion  
- 💊 **Treatment engineering** (Surgery / Chemotherapy / Radiation)  
- ⏱ Survival time calculation  
- 📈 Kaplan-Meier curves + stratified survival comparisons  
- 🧪 Cox proportional hazards modeling (including time-dependent terms)  
- 🖥 Shiny app for personalized survival curve prediction  
- 📦 Reproducible R scripts organized into modular pipeline steps  

---

## 🗂 Repository Structure

