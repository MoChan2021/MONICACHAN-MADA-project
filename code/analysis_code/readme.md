## General instructions for reproducable analysis

Code to run are found in the `code` file from main repo.

### Requirements

Required packages in R to process and reproduce data.

* `broom`
* `here`
* `tidyverse` 
* `tidymodels` 
* `reshape2`
* `caret`
* `rpart`
* `rpart.plot`
* `glmnet`

### Analysis

1. Analysis code of processed data has been compiled in `analysis_code` folder.
2. code/`analysis_code` folder contains the rmd files of analysis for:
   * `01-ALLData.rmd` analysis for `ALL.Data-20211029.rds`
   * `02-P1.Data.rmd` analysis for `P1-20211029.rds`
   * `03-P2.Data.rmd` analysis for `P2-20211029.rds`
3. Modeling analysis denoted in "04-Mods.Phase2.specific model analysis.rmd"
   * **Model Explorations** with all variables in Phase 2
     * `04-Mods.P2.BestTree` - Best Tree Machine Learning Model
     * `04-Mods.P2.LASSO` - LASSO Machine Learning Model
     * `04-Mods.P2.RandomForest` - Random Forest Machine Learning Model
4. Model Refinement in 05 rmd for important influences.
   * `05-Mods.P2.TargetedML` Targeted Random Forest and Best Tree applied Machine Learning Model
   
## Notes

* **`processing_code`**
  * Code used to modify and standardize `raw data`. 
  * Script outputs products as .rds into `processed_data`.
  * TEMP folder contains archival scripts for additional functions not utilized in final manuscript.
* **`analysis_code`**
  * figures, tables, and data are output into `results` folder.
  * TEMP folder contains archival scripts for additional functions not utilized in final manuscript.
