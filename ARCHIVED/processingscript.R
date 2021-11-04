###############################
# processing script
#
#this script loads the raw data, processes and cleans it 
#and saves it as Rds file in the processed_data folder

#load needed packages. make sure they are installed.
library(readxl) #for loading Excel files
library(dplyr) #for data processing
library(here) #to set paths
library(stringr)
#path to data
#note the use of the here() package and not absolute paths
data_location <- here::here("data","raw_data","2021.10.08_Spike2.csv")

#load data. 
#note that for functions that come from specific packages (instead of base R)
# I often specify both package and function like so
#package::function() that's not required one could just call the function
#specifying the package makes it clearer where the function "lives",
#but it adds typing. You can do it either way.
rawdata <- read.csv(data_location)

#take a look at the data
dplyr::glimpse(rawdata)

head(rawdata)
tail(rawdata)
summary(rawdata)

processeddata <- rawdata %>%
  select(EXP, PCR, Method, Type, Dilution.Factor,FIN.Vol, Target, Ct, RH, Temp)%>% #select specific cols that may be interesting to compare
  mutate(Target=as.factor(Target), Type=as.factor(Type), Method=as.factor(Method), EXP=as.factor(EXP)) %>% #mutate some cols to become specific data types
  rename(Input=FIN.Vol) #Rename column for easier identification
  
##split from here and make 
#Create supplementary dataframe due to all the Undetermined Ct Values from the reports.
Undetermined<- processeddata%>%
  filter(Ct=="Undetermined")
#Save this too
save_data_location <- here::here("data","processed_data","UndeterminedData.rds")
saveRDS(Undetermined, file = save_data_location)


### Return to data and force mutate Ct values
processeddata<-processeddata%>%
  mutate(Ct=as.numeric(Ct))
  
# save data as RDS
# See here for some suggestions on how to store your processed data:
# http://www.sthda.com/english/wiki/saving-data-into-r-data-format-rds-and-rdata

# location to save file
save_data_location <- here::here("data","processed_data","processeddata.rds")

saveRDS(processeddata, file = save_data_location)

##########
