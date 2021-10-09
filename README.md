# Overview

This is Monica Chan's class project repository.

__2021.09.16 - Part 1 -__  

* Required assignment outputs in the products folder in Part_1 as "Proposal.Rmd"" -- knitted to both document and [html](/products/Part_1/Proposal.html) outputs.

* Current data has been uploaded in data folder as 2021.08.18_Spike.csv.

__2021.10.08 - Part 2 -__  

* Updated data was included in raw data. 
* Raw data was processed and saved in processed_data folder. Created additional RDS file for Undetected entries.  processing_code file contains processing script
* analysis_code file contains analysis script
* Data wrangling can be found in Products folder Part_2 called "DataExploration.Rmd"


2021.10.29 - Part 3 -  
2021.11.26 - Part 4 -  
2021.12.10 - Part 5 -  

***

# Pre-requisites

This is a template for a data analysis project using R, Rmarkdown (and variants, e.g. bookdown), Github and a reference manager that can handle bibtex. It is also assumed that you have a word processor installed (e.g. MS Word or [LibreOffice](https://www.libreoffice.org/)). You need that software stack to make use of this template.

# Template structure

* All data goes into the subfolders inside the `data` folder.
* All code goes into the `code` folder or subfolders.
* All results (figures, tables, computed values) go into `results` folder or subfolders.
* All products (manuscripts, supplement, presentation slides, web apps, etc.) go into `products` subfolders.
* See the various `readme.md` files in those folders for some more information.

# Template content 

The template comes with a few files that are meant as illustrative examples of the kinds of content you would place in the different folders. 

* There is a simple, made-up dataset in the `raw_data` folder. 
* The `processing_code` folder contains a single R script which loads the raw data, performs a bit of cleaning, and saves the result in the `processed_data` folder.
* The `analysis_code` folder contains an R script which loads the processed data, fits a simple model, and produces a figure and some numeric output, which is saved in the `results` folder.
* The `products` folder contains an example `bibtex` and CSL style file for references. Those files are used by the example manuscript, poster and slides.
* The `poster` and `slides` folders contain very basic examples of posters and slides made with R Markdown. Note that especially for slides, there are many different formats. You might find a different format more suitable. Check the R Markdown documentation. 
* The  `manuscript` folder contains a template for a report written in Rmarkdown (bookdown, to be precise). If you access this repository as part of [my Modern Applied Data Science course](https://andreashandel.github.io/MADAcourse/), the sections are guides for your project. If you found your way to this repository outside the course, you might only be interested in seeing how the file pulls in results and references and generates a word document as output, without paying attention to the detailed structure.

# Getting started

This is a Github template repository. The best way to get it and start using it is [by following these steps.](https://help.github.com/en/articles/creating-a-repository-from-a-template)

Once you got the repository, you can check out the examples by executing them in order. First run the cleaning script, which will produce the processed data. Then run the analysis script, which will take the processed data and produce some results. Then you can run the manuscript, poster and slides example files in any order. Those files pull in the generated results and display them. These files also pull in references from the `bibtex` file and format them according to the CSL style.


