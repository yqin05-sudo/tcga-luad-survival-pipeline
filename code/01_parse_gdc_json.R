# 01_parse_gdc_json.R
# Parsing TCGA-LUAD JSON files from GDC into tidy tibbles

library(jsonlite)
library(tidyverse)

# Placeholder: load JSON files from data_raw/

# cases_raw <- fromJSON("data_raw/cases.json", flatten = TRUE)

# TODO:
# - unnest demographics
# - unnest diagnoses
# - unnest treatments
# - unnest exposures
# - unnest follow_ups

# saveRDS(parsed_data, "data_clean/parsed_raw.rds")
