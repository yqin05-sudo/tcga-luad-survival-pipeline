<h1 align="center"> 🚀 TCGA-LUAD Survival Analysis Pipeline>

<p align="center">

<!-- TCGA PROGRAM：深红色，圆角小图标 -->
[![TCGA Program](https://img.shields.io/badge/TCGA-PROGRAM-8B0000?style=flat)](https://www.cancer.gov/ccg/research/genome-sequencing/tcga)

<!-- TCGA | LUAD -->
<a href="https://portal.gdc.cancer.gov/projects/TCGA-LUAD">
<img src="https://img.shields.io/badge/TCGA%20%7C%20LUAD-6f42c1?style=flat" />
</a>

<!-- NCI GDC：NCI 灰，GDC 蓝色 -->
[![NCI GDC](https://img.shields.io/badge/NCI-GDC-276DC3?style=flat)](https://portal.gdc.cancer.gov/)

<!-- R：保持 Made with R 小图标风格（蓝色） -->
[![Made with R](https://img.shields.io/badge/Made%20with-R-276DC3?style=flat&logo=r&logoColor=white)](https://www.r-project.org/)

<!-- MIT：绿色 -->
[![MIT License](https://img.shields.io/badge/License-MIT-2ea44f?style=flat)](https://opensource.org/licenses/MIT)

<!-- LinkedIn Connect：用和 R 一样的蓝色，圆角小图标 -->
[![LinkedIn Connect](https://img.shields.io/badge/LinkedIn-Connect-276DC3?style=flat&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/yunlongqin/)

</p>

<hr>

This repository provides a complete, reproducible pipeline for processing  
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

---

## 3. Project Structure

```
tcga-luad-survival-pipeline/
├── data_raw/                    # Raw GDC JSON / TSV
├── data_clean/                  # Final cleaned dataset
│   ├── luad.data.rds
│   ├── variable_dictionary.md
│
├── code/                        # All pipeline scripts
│   ├── 01_download.R
│   ├── 02_cleaning.R
│   ├── 03_variable_mapping.R
│   ├── 04_survival_table.R
│   ├── 05_cox_model.R
│   ├── 06_generate_figures.R
│   └── 07_export_results.R
│
├── results/
│   ├── km_plots/                # KM images
│   │   ├── overall_km.png
│   │   └── stage_km.png
│   ├── forest_plots/            # Cox forest plot
│   │   └── cox_forest.png
│   └── model_summary/           # RDS + text output
│       ├── cox_model.rds
│       └── cox_summary.txt
│
└── docs/
    └── pipeline.md              # Full methods
```

---

## 4. Key Results

### ⭐ Kaplan–Meier: Overall Survival
<img src="results/km_plots/overall_km.png" width="600" />

---

### ⭐ Kaplan–Meier: Survival by Stage (I, II, III/IV)
<img src="results/km_plots/stage_km.png" width="600" />

---

### ⭐ Multivariable Cox Model — Forest Plot
<img src="results/forest_plots/cox_forest.png" width="600" />

---

## 5. 🚀 Quick Start

Install required R packages:

```r
install.packages(c("survival", "survminer", "tidyverse"))
```

Run analysis:

```r
source("code/06_generate_figures.R")
source("code/07_export_results.R")
```

---

## 6. 📘 Documentation

Full methods are described in:  
📄 **docs/pipeline.md**

Includes:

- Data sources  
- Variable definitions  
- Cleaning rules  
- Model formulas  
- Figure generation settings  

---

## 7. 🔒 Data Source & Compliance

This project uses publicly accessible TCGA-LUAD data obtained via the  
NCI Genomic Data Commons (GDC).

- No PHI is included  
- Data use follows GDC open-access policies  
- Case identifiers are anonymized UUIDs  
- Analysis intended for research and education  

---

## 8. 📚 Citation

If using this pipeline, please cite:

- The Cancer Genome Atlas (TCGA)  
- NCI Genomic Data Commons (GDC)

---

## 9. ✉️ Contact

For questions or collaboration opportunities:

**Yunlong Qin, PhD**  
📧 bangong24@outlook.com / yqin05@gmail.com
