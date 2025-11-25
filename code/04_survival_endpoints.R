# 04_survival_endpoints.R
# Constructing survival endpoints: OS_time_months and OS_event

library(tidyverse)

# TODO:
# - convert days_to_death / days_to_last_follow_up -> months
# - OS_event = 1 if deceased, 0 if living
# - ensure no case_id is duplicated
# - keep total sample size at 585

# Example placeholder:
# luad_surv <- luad_clean %>%
#   mutate(
#     OS_event = ifelse(vital_status == "Dead", 1, 0),
#     OS_time_months = case_when(
#       !is.na(days_to_death) ~ days_to_death / 30.44,
#       !is.na(days_to_last_follow_up) ~ days_to_last_follow_up / 30.44,
#       TRUE ~ NA_real_
#     )
#   )

# saveRDS(luad_surv, "data_clean/luad_survival.rds")

