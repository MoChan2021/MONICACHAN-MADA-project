## Overview

This is Monica Chan's class project repository for MADA Fall 2021.

Real-Time rT-PCR data is comparing the recovery of heat inactivated SARS-CoV-2 copies after sample recovery and different extraction methods.
We are evaluating an automated extraction method and a nanoparticle based extraction. The nanoparticle use claims to select better than a normal extraction.

* Working manuscript can be found __[here](https://github.com/MoChan2021/MONICACHAN-MADA-project/tree/master/products/manuscript)__.

* Processing script can found __[here](https://github.com/MoChan2021/MONICACHAN-MADA-project/tree/master/code/processing_code)__.

ProcessingScript.Rmd contains the preparation of a prepared composite of runs.
Cleaning_Reports.RMD is a work in progress to make an automated script for pulling and collating data from the raw_data folder's reports.

* __[Part 3](https://github.com/MoChan2021/MONICACHAN-MADA-project/tree/master/products/Project_Parts/Part_3)__ contains more summary looks at the data.

* Products from general check ins can be found __[here:](https://github.com/MoChan2021/MONICACHAN-MADA-project/tree/master/products/Project_Parts)__.


|Key|Description|
|--------|-----------|
|Phase|Experimental run consisting of 3 repeats using the same experimental parameters|
|RH|Relative Humidity of the Biosafety Cabinet for inoculation of surfaces|
|TEMP|Temperature of the Biosafety Cabinet for inoculation of surfaces|
|Method| The method of extraction, either CDC or NTP|
|CDC|Automated sample extraction method|
|NTP|Nanoparticle sample extraction method|
|Tool|The Tool (SANIGEN SANISWAB, a macrofoam sponge swab) that was used to recover sample, also indicates if the sample from the PCR is a control for the PCR|
|NEG.CTRL|Negative control tool, recovered Viral Transport Media from surfaces|
|POS.CRTL| Positive control tool, spiked with 20uL sample at -1 concentration|
|A|Recovery of a surface inoculated at -1 concentration|
|B|Recovery of a surface inoculated at -3 concentration|
|PCR| When under the Tool category it represents the control for the PCR plate|
|SD|Serial Dilution, a serial dilution series that goes directly into respective extraction method|
|Input|The volume input of sample that is used per extraction method, NTP is flexible and can increase as needed with the same amount of particles used|
|Dilution|The starting serial dilution the samples were either spiked or inoculated with. It also is the sample concentration for SD tools (-1 to -5)|
|Copies|Estimated copies of RNA per sample, based off of estimated starting concentration and dilution volumes-- not used currently|
|Detector|fluorescent primers and probes that bind specifically to two regions in the SARS-CoV-2 nucleocapsid (N) gene, N1 and N2 |
|Ct|Ct Values/Cycle threshold number of cycles required for the fluorescent signal to cross the threshold (ie exceeds background level). The lower the Ct value the more copies are in the originating sample|

## Updates

### __2021.09.16 - Part 1 -__  

* Required assignment outputs in the products folder in Part_1 as "Proposal.Rmd"" -- knitted to both document and [html](/products/Part_1/Proposal.html) outputs.

* Current data has been uploaded in data folder as 2021.08.18_Spike.csv.

### __2021.10.08 - Part 2 -__  

* Updated data was included in raw data. 
* Raw data was processed and saved in processed_data folder. Created additional RDS file for Undetected entries.  processing_code file contains processing script
* analysis_code file contains analysis script
* Data wrangling can be found in Products folder Part_2 called "DataExploration.Rmd"


### __2021.10.29 - Part 3 -__

* Start 
* For analysis exploration, importing a compiled as 2021-10-23_All.Update.csv
* Re-run and recompile data saves.
* Notes to Address below:
Project structure addressed, main file and supplementary files contain bult of results tables and figures.
* Analysis- all relevant files and documents for reproduction
some documentation
files with well-documented code including particular scripts
start analysis with patterns between outcomes nad individual predictors of interest



### __2021.11.26 - Part 4 -__  
### __2021.12.10 - Part 5 -__  

***

