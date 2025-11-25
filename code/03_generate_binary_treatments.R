# 03_generate_binary_treatments.R
# Deriving Surgery / Chemo / Radiotherapy binary flags

library(tidyverse)
library(stringr)

# TODO:
# - detect treatment_type patterns
#   e.g., "surg", "chemo", "radiat"
# - combine with treatment_or_therapy ("yes", "unknown")
# - generate:
#       has_surgery
#       has_chemotherapy
#       has_radiotherapy

# Placeholder example:
# treat_bin <- treat_raw %>%
#   mutate(
#     has_surgery = ifelse(
#       str_detect(tolower(treatment_type), "surg") &
#         treatment_or_therapy %in% c("yes", "unknown"),
#       "Yes", "No"
#     ),
#     has_chemotherapy = ifelse(
#       str_detect(tolower(treatment_type), "chemo") &
#         treatment_or_therapy %in% c("yes", "unknown"),
#       "Yes", "No"
#     ),
#     has_radiotherapy = ifelse(
#       str_detect(tolower(treatment_type), "radiat") &
#         treatment_or_therapy %in% c("yes", "unknown"),
#       "Yes", "No"
#     )
#   )

# saveRDS(treat_bin, "data_clean/luad_treatments.rds")

