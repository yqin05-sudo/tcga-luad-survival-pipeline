tcga-luad-survival-pipeline/
│
├── data_raw/                # 原始（或示例化后的）GDC 数据
│   ├── cases.json
│   └── clinical.project-TCGA-LUAD.json
│
├── data_clean/              # 清洗后的数据
│   ├── luad_585_clean.csv
│   ├── luad_585_clean.rds
│   └── variable_dictionary.md
│
├── code/
│   ├── 01_parse_gdc_json.R
│   ├── 02_clean_merge_variables.R
│   ├── 03_generate_binary_treatments.R
│   ├── 04_survival_endpoints.R
│   ├── 05_cox_model.R
│   ├── 06_km_forest_plots.R
│   └── helpers.R
│
├── shiny_app/
│   ├── app.R
│   ├── data/
│   │   ├── luad.model.rds
│   │   └── luad.data.rds
│   └── www/
│       ├── custom.css
│       └── logo.png
│
├── results/
│   ├── km_plots/
│   │   ├── km_surgery.png
│   │   ├── km_chemo.png
│   │   └── km_stage.png
│   ├── forest_plots/
│   │   ├── cox_forest.png
│   └── model_summary/
│       └── cox_summary.txt
│
├── docs/
│   ├── pipeline_overview.md
│   ├── clinical_variable_notes.md
│   ├── survival_methodology.md
│   └── shiny_user_guide.md
│
├── README.md
└── LICENSE
