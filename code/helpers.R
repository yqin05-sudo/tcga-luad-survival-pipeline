# helpers.R
# Helper utility functions for LUAD pipeline

library(tidyverse)

# Safely extract nested list elements
safe_extract <- function(x) {
  if (is.null(x) || length(x) == 0) return(NA)
  return(x)
}

# Convert days to months
to_months <- function(days) {
  ifelse(!is.na(days), days / 30.44, NA_real_)
}

# Clean text fields (trim, lower, etc.)
clean_text <- function(x) {
  x %>%
    tolower() %>%
    trimws()
}

# Placeholder for additional helpers
# e.g., safe_unnest(), normalize_stage(), etc.

