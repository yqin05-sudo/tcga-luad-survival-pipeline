# Pipeline Overview

This document provides a high-level description of the TCGA-LUAD survival analysis pipeline.

## Steps

1. **Parse GDC JSON**
   - Load raw TCGA/GDC JSON files
   - Unnest: demographics, diagnoses, treatments, exposures, follow-ups

2. **Clean & Merge Variables**
   - Extract primary diagnosis
   - Extract AJCC stage (T/N/M)
   - Extract exposures (smoking)
   - Extract ECOG/Karnofsky (preoperative)
   - Merge all clinical variables into a single table

3. **Treatment Engineering**
   - Create binary variables:
     - has_surgery
     - has_chemotherapy
     - has_radiotherapy

4. **Survival Endpoint Construction**
   - Calculate OS_time_months
   - Derive OS_event
   - Handle censored vs event cases

5. **Cox Proportional Hazards Modeling**
   - Fit Cox models
   - Check PH assumptions
   - Export model summary and objects

6. **Visualization**
   - Kaplan-Meier survival curves
   - Cox model forest plots

7. **Shiny App (Optional)**
   - Interactive survival prediction tool

