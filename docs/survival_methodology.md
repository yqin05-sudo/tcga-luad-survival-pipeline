# Survival Methodology

This document explains the survival analysis methods used in this project.

## Endpoint Definition
- **OS_time_months** = days_to_death or days_to_last_follow_up (converted to months)
- **OS_event** = 1 if deceased, 0 if alive

## Modeling Approach
- Cox proportional hazards model
- Time-dependent terms optional
- PH assumption tested using cox.zph

## Visualization
- Kaplan-Meier curves
- Forest plots for hazard ratios

