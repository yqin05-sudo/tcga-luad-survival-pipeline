<p align="center">
  <a href="https://www.r-project.org/">
    <img src="https://img.shields.io/badge/R-4.3.0-276DC3?logo=r&logoColor=white" style="height:20px;" />
  </a>
  <a href="https://shiny.rstudio.com/">
    <img src="https://img.shields.io/badge/Shiny-App-orange?logo=rstudio&logoColor=white" style="height:20px;" />
  </a>
  <a href="https://portal.gdc.cancer.gov/">
    <img src="https://img.shields.io/badge/TCGA-Database-blue" style="height:20px;" />
  </a>
  <a href="https://portal.gdc.cancer.gov/projects/TCGA-LUAD">
    <img src="https://img.shields.io/badge/LUAD-Lung%20Adenocarcinoma-red" style="height:20px;" />
  </a>
  <a href="https://opensource.org/licenses/MIT">
    <img src="https://img.shields.io/badge/License-MIT-brightgreen" style="height:20px;" />
  </a>
</p>

---

# 📊 Overview

This repository provides a fully reproducible **end-to-end survival analysis pipeline** for  
**TCGA Lung Adenocarcinoma (LUAD)** including:

- Clinical data parsing from GDC JSON  
- Variable harmonization & cleaning  
- Treatment engineering (Surgery / Chemo / Radiation)  
- Survival time calculation  
- Cox proportional hazards modeling  
- KM survival visualization  
- Interactive Shiny survival prediction app  

This pipeline is designed for:

- Oncology researchers  
- Clinical collaborators  
- Biostatistics / data science teams  
- Reproducible research projects  

---

# 🧬 Data Processing Pipeline

### **1. Parse GDC JSON**
- Unnest nested fields: demographics, diagnoses, treatments, exposures, follow-ups  
- Handle missing or optional structures  
- Convert into tidy tibble format  

### **2. Clean & Merge Clinical Variables**
- Extract primary diagnosis  
- Extract AJCC stage (T / N / M)  
- Extract ECOG & Karnofsky (preoperative)  
- Merge exposures (smoking status, pack years)  
- Maintain **exactly 585 LUAD cases**

### **3. Engineer Treatment Indicators**
Create binary variables:

- `has_surgery`
- `has_chemotherapy`
- `has_radiotherapy`

Using both:
- `treatment_type`  
- `treatment_or_therapy`

### **4. Survival Endpoints**
- OS_time_months = days_to_death or days_to_last_follow_up  
- OS_event = 1 (deceased) / 0 (alive)  
- Handles censoring and missingness

### **5. Cox PH Modeling**
- Fixed-effects Cox  
- PH assumption via cox.zph  
- Export model object + summary  
- Supports time-dependent term (optional)

### **6. Visualization**
- Kaplan-Meier curves  
- Forest plots  
- Publication-ready PNGs saved in `results/`

### **7. Shiny App (Prototype)**
- Loads Cox model  
- Generates personalized survival curves  
- Treatment comparison  
- Clinical decision support (prototype)

## 📘 Data Use & Compliance Statement

This repository uses publicly available, open-access data from the  
**NCI Genomic Data Commons (GDC)** and **TCGA-LUAD (Lung Adenocarcinoma)** project.

### ✔ Compliance with NIH/NCI Policies
All analyses, scripts, and derived datasets in this repository comply with:

- **GDC Data Sharing Policy**  
- **TCGA Publication Guidelines**  
- **NIH Genomic Data Sharing (GDS) Policy**  
- **Open-access data usage requirements**

### ✔ No Controlled-Access or Identifiable Data
This project **does not use** controlled-access files, protected patient data,  
or any PHI/PII. The workflow is based solely on:

- Open-access clinical JSON metadata  
- Publicly downloadable TCGA summary-level data

All derived datasets produced in this repository contain **no personal identifiers**  
and follow GDC guidelines for de-identification.

### ✔ Data Redistribution
In accordance with TCGA/GDC policy:

- **Raw data files (JSON, clinical source files)** are **NOT redistributed** in this repository.  
  Instead, users are directed to download them directly from the GDC Portal.
- This repository provides **scripts only**, enabling reproducible processing  
  without redistributing the original TCGA data.

### ✔ Proper Attribution
Users of this repository should cite:

> The Cancer Genome Atlas Research Network.  
> Genomic Data Commons (GDC), National Cancer Institute.

### ✔ Intended Use
This repository is for **research**, **education**, and **non-commercial** analytic purposes.  
It is **not** intended for clinical decision-making or patient care.

---

# 🗂 Directory Structure

