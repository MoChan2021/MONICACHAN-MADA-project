# General Information

**OAMDi Surface Recovery Data**

* Data collected in 2021
* Funding supported by 2020 Office of Advanced Molecular Detection Initiative 

# Data and File overview

**File List**

* 2021fasfd 

**Description**



# Methods

1. Description of methods used for collection/generation of data: 
<Include links or references to publications or other documentation containing experimental design or protocols used in data collection>

2. Methods for processing the data: 
See readme.md in code folder

3. Instrument- or software-specific information needed to interpret the data: 
<include full name and version of software, and any necessary packages or libraries needed to run scripts>

4. Standards and calibration information, if appropriate: 

5. Environmental/experimental conditions: 

6. Describe any quality-assurance procedures performed on the data: 



## Variable List & Key

|Code|Key|Description|
|----|--------|-----------|
|**Phase**|P1 & P2|Experimental run consisting of 3 repeats using the same experimental parameters. There are 2 Phases included in the data set. (P1 and P2)|
|**RH**|Relative Humidity (%)|Environmental Measurement. The percent relative humidity recorded Biosafety Cabinet for inoculation of surfaces|
|**TEMP**|Temperature (°C)|Environmental Measurement.Temperature of the Biosafety Cabinet for inoculation of surfaces|
|**Method**|Extraction Method|The method of extraction for molecular analysis: CDC and NTP|
|**CDC**|CDC Method|Automated sample extraction method: Promega Maxwell 48 TNA Kit|
|**NTP**|NTP Method|Nanoparticle sample extraction method: Ceres Nanoscience Viral Nanotrap particles|
|**Tool**|Tool/Sample|The Tool (SANIGEN SANISWAB, a macrofoam sponge swab) that was used to recover sample / also indicates if the sample from the PCR is a control for the PCR. There are 8 Tools used per run consisting of 2 controls, and 2 triplicate recovery tool|
|**NEG.CTRL**|Sample: NEG.CTRL|Negative control tool, recovered Viral Transport Media from surfaces|
|**POS.CRTL**|Sample: POS.CRTL| Positive control tool, spiked with 20μL sample at -1 concentration|
|**A**|Sample: A|Recovery of a surface inoculated at -1 concentration|
|**B**|Sample: B|Recovery of a surface inoculated at -3 concentration|
|**PCR**|Sample: PCR| When under the Tool category it represents the control for the PCR plate|
|**SD**|Serial Dilution Control|A serial dilution series that goes directly into respective extraction method. The "Dilution" factor is associated with this series.|
|**Input**|0300, 1000, & ELUE|The volume input of sample that is used per extraction method. ELUE = Eluent, the remaining volume that varies based off of extraction from tool and removal of 1600mL for other methods use.|
|**Dilution**|0, -1, -2, -3, -4, -5, & -6|The starting serial dilution the samples were either spiked or inoculated with. It also is the sample concentration for SD tools (-1 to -5)|
|**Copies**|Copies of RNA|Estimated copies of RNA per sample, based off of estimated starting concentration and dilution volumes-- not used currently|
|**Detector**|N1 & N2|Fluorescent primers and probes that bind specifically to two regions in the SARS-CoV-2 nucleocapsid (N) gene, N1 and N2 |
|**Ct**|Ct Value|Cycle threshold number of cycles required for the fluorescent signal to cross the threshold (ie exceeds background level). The lower the Ct value the more copies are in the originating sample|

