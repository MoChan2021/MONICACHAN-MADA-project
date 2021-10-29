###############################
# Phase 2 Processing script
#
#This script loads the raw phase 2 data as of 2021-10-22 data for processing and
#cleaning it and saves it as Rds file in the processed_data folder

#load needed packages.
library(tidyverse) #for data processing
library(here) #to set paths
library(stringr)
library(lubridate)
#Confirm location using "here()" package for relative paths:
here()
#Establish data location, relative to top-level directory
data_location <- here::here("data","raw_data","2021-10-23_Phase2.Update.csv")

#load data. 
RawP2 <- read.csv(data_location)

glimpse(RawP2)
#Data Shape up

raw<-RawP2%>%
  select(Phase, PCR, RH, TEMP, Plate, Method, Well, Tool, Input, Dilution, Sample.Name, Detector, Ct)%>%
  mutate(PCR=as.Date(mdy(PCR)), Method=as.factor(Method), Ct=as.numeric(Ct), Detector=as.factor(Detector))%>%
  filter(Tool!="")

glimpse(raw)

# save data as RDS
# location to save file
save_data_location <- here::here("data","processed_data","P2.Processed.rds")
saveRDS(raw, file = save_data_location)

