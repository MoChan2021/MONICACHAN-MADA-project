# Project Overview

This is the repository of the class project utilizing techniques and approaches learned in the 2021 section of Modern Applied Data Analysis.

### Evaluation of extraction techniques on the surface recovery of heat-inactivated SARS-nCoV-2

Real-time rt-PCR data reports evaluation of extraction methods utilized in the recovery of RNA copies of heat-inactivated SARS-nCoV-2 from stainless steel surfaces by macrofoam swabs.

#### Key Questions:

1. Do the methods evaluated work? (Y/N extraction)
2. Is there a difference between methods?
3. Are there any additional effects the recovery? (P1 (spike) vs P2 (tool sampling))

__Bonus__: Playing with models. 

## File Structure

* All data are contained/exported to respective sub-folders within `data` folder.
  - Processed data are saved as .rds files 
* All code goes into `code` folder and respective sub-folders. 
  - `readme.md` provides additional details about data.
* All analysis results go into the `results` folder and respective sub-folders.
  - Includes figures, tables, & computed values
* `Manuscript` is compiled in the `products` folder

## General instructions for reproducable analysis

Code to run are found in the `code` file from main repo.

### Processing raw data (Run first to create data for analysis)

1. Raw data has been compiled and deposited in `raw_data` folder.
2. code/`processing_code` folder contains rmd file processing and cleaning compiled data set `ProcessingScript.Rmd`
   - Data has been cleaned, split, and saved as rds files in `data`/`processed-data` for use in analysis.  
     - `ALL.Data-20211029.rds` Compilation of all reports
     - `P1-20211029.rds` Direct Spike Data
     - `P2-20211029.rds` Surface Recovery Data

### Analysis

1. Analysis code of processed data has been compiled in `analysis_code` folder.
2. code/`analysis_code` folder contains the rmd files of analysis for:
   - `01-ALLData.rmd` analysis for `ALL.Data-20211029.rds`
   - `02-P1.Data.rmd` analysis for `P1-20211029.rds`
   - `03-P2.Data.rmd` analysis for `P2-20211029.rds`
3. 


* See `code` folder
 - https://github.com/MoChan2021/MONICACHAN-MADA-project/tree/master/code
   - Data Preparation/Processing
     - See Processing Code Folder
       - Cleaned data are saved in Products folder
   - Analysis
     - See Analysis Code Folder
 

## Requirements

Required packages in R to process and reproduce data.

* `broom` - 
* `here` - 
* `lubridate` - 
* `tidyverse` - 
* `tidymodels` - 

## Additional Notes

* `readme.md` files in each folder detail additional information of files found in folder and respective sub-folders.
* `ARCHIVE` folder in main repository contains versions of code and outputs that were deemed unnecessary as not utilized in the final report.
