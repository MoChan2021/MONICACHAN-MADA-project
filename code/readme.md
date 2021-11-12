## General instructions for reproducable analysis

Code to run are found in the `code` file from main repo.

### Requirements

Required packages in R to process and reproduce data.

* `broom` - 
* `here` - 
* `lubridate` - 
* `tidyverse` - 
* `tidymodels` - 
* `reshape2`

### Processing raw data

1. Raw data has been compiled and deposited in `raw_data` folder.
2. code/`processing_code` folder contains rmd file processing and cleaning compiled data set `ProcessingScript.Rmd`
   - Data has been cleaned, split, and saved as rds files in `data`/`processed-data` for use in analysis.  
     - `ALL.Data-20211029.rds` Compilation of all reports
     - `P1-20211029.rds` Direct Spike Data
     - `P2-20211029.rds` Surface Recovery Data
3. `ProcessingScript2.Rmd`
   - rds Data generated from `ProcessingScript.Rmd` is further wrangled and manipulated to prepare for additional analysis.

### Analysis

1. Analysis code of processed data has been compiled in `analysis_code` folder.
2. code/`analysis_code` folder contains the rmd files of analysis for:
   - `01-ALLData.rmd` analysis for `ALL.Data-20211029.rds`
   - `02-P1.Data.rmd` analysis for `P1-20211029.rds`
   - `03-P2.Data.rmd` analysis for `P2-20211029.rds`
   
   
## Notes

* `processing_code`
  - TEMP folder contains potentially archival scripts for additional functionality
* `analysis_code`
  - fff
