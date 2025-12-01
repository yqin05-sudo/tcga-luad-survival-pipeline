# Model Summary

## Files Included

### 1. `cox_model.rds`
- Saved R object of the multivariable Cox proportional hazards model.
- Number of patients: **487**
- Number of events: **171**

### Included Predictors
- age
- gendermale
- smokingEver
- stage_groupII
- stage_groupIII/IV
- surgeryYes
- chemoYes
- radiationYes

### 2. `cox_summary.txt`
- Output of `summary(cox_model)`.
- Includes HR, 95% CI, p-values, and model statistics.

