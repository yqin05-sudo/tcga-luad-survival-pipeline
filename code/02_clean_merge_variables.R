# 02_clean_merge_variables.R
# Cleaning and harmonizing variables for LUAD survival modeling

library(tidyverse)

# TODO:
# - merge demographics
# - extract main diagnosis row per case_id
# - extract AJCC stage and T/N/M
# - extract days_to_last_follow_up
# - extract primary_diagnosis
# - extract exposures (tobacco & pack years)
# - extract preoperative ECOG / Karnofsky
# - join all into a single 585-case table

# saveRDS(luad_clean, "data_clean/luad_merged.rds")
