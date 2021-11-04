###############################
# analysis script
#
#this script loads the processed, cleaned data, does a simple analysis
#and saves the results to the results folder

#load needed packages. make sure they are installed.
library(dplyr) #for data processing
library(ggplot2) #for plotting
library(broom) #for cleaning up output from lm()
library(here) #for data loading/saving

#path to data
#note the use of the here() package and not absolute paths
data_location <- here::here("data","processed_data","processeddata.rds")
data_location2 <- here::here("data","processed_data","UndeterminedData.rds")



#load data. 
mydata <- readRDS(data_location)
Un_mydata <- readRDS(data_location2)
######################################
#Data exploration/description
######################################



#summarize data 
mysummary = summary(mydata)

#look at summary
print(mysummary)

#do the same, but with a bit of trickery to get things into the 
#shape of a data frame (for easier saving/showing in manuscript)
summary_df = data.frame(do.call(cbind, lapply(mydata, summary)))

#save data frame table to file for later use in manuscript
summarytable_file = here("results", "summarytable.rds")
saveRDS(summary_df, file = summarytable_file)


#make a scatterplot of data
#we also add a linear regression line to it
p1 <- mydata %>% 
  filter(Method!="PCR")%>%
  ggplot(aes(x=Dilution.Factor, y=Ct)) + 
  geom_jitter(aes(color=Method)) + 
  geom_smooth(method='lm')+
  facet_grid(Method~Type)

#look at figure
plot(p1)

#save figure
figure_file = here("results","resultfigure.png")
ggsave(filename = figure_file, plot=p1) 

######################################
#Data fitting/statistical analysis
######################################

# fit linear model
lmfit <- lm(Dilution.Factor ~ Ct, mydata)  

# place results from fit into a data frame with the tidy function
lmtable <- broom::tidy(lmfit)

#look at fit results
print(lmtable)

# save fit results table  
table_file = here("results", "resulttable.rds")
saveRDS(lmtable, file = table_file)

####################################################################
#Data Exploration More:
######################

#Summary table based on 
SummaryTableAll<-mydata%>%
  group_by(EXP,Target, Dilution.Factor, Method, Type)%>%
  summarise(n=n(),
            Mean= mean(Ct),
            SD= sd(Ct))

print(summary(SummaryTableAll))

#attempt to see if i can get a better summary table?
summary_df2 = data.frame(do.call(cbind, lapply(SummaryTableAll, summary)))
#save data frame table to file for later use in manuscript
summarytable_file = here("results", "summarytable.rds")
saveRDS(summary_df2, file = summarytable_file) #not that useful

#Barplot- showing total number samples
SummaryTableAll%>%
  ggplot(aes())+
  geom_bar(aes(Method, fill=Type))+
  facet_grid(Target~EXP)

##Direct comparisons for input at 300uL(the same inputs for extraction)
DirectCompare<-mydata%>%
  filter(Input=="300")
str(DirectCompare)

print(summary(DirectCompare))

p2<-DirectCompare%>%
  ggplot(aes(Dilution.Factor,Ct))+
  geom_jitter(aes(color=Method, shape=Type))+
  facet_grid(Target~EXP)

#look at figure
plot(p2)

#save figure
figure_file = here("results","resultfigure2.png")
ggsave(filename = figure_file, plot=p2) 
## Interesting-- why is there such a group difference in Surface Sampling experiements versus Spike
## Oh makes sense it's SD- the serial dilution. We expect the SD to be like the standard curve and the recovery should have loss.

### Deeper dive into looking at the Surface Sampling Experiment, as it has some differences and is new-er data. Also includes data with Temp & RH:

p3<-DirectCompare%>%
  filter(Dilution.Factor!="NA",EXP=="SurfaceSampling", Input=="300")%>% #filter data specifically for SurfaceSampling experiment and the inputs of 300
  ggplot(aes(x=Method, y=Ct))+
  geom_boxplot(outlier.shape = "diamond", #cool, figured out outliers shape
               outlier.color="red",#cool, figured out outliers color highlighter
               aes(fill=Method))+ 
  facet_grid(Target+Type~Dilution.Factor)
###look at figure
plot(p3)

###save figure SS300
figure_file = here("results","SS300.png")
ggsave(filename = figure_file, plot=p3)


#### Let's focus only on the Surface sampling 
p4<-DirectCompare%>%
  filter(EXP=="SurfaceSampling", 
         Input=="300")%>% 
  ggplot(aes(x=Dilution.Factor, y=Ct))+
  geom_jitter()+
  geom_smooth(method="loess")+ #added smooth regression line
  facet_grid(Method~Type)
plot(p4)
###save figure SS300Smooth
figure_file = here("results","SS300Smooth.png")
ggsave(filename = figure_file, plot=p4)

             
#### Try Density plots
DraftP5<-mydata%>%
  filter(EXP=="SurfaceSampling", 
         Input=="300")%>% 
  ggplot(aes(x=Ct, color=Method))+
  geom_density()+
  facet_grid(.~Type)
plot(DraftP5)

###save figure
figure_file = here("results","SS300-Density.png")
ggsave(filename = figure_file, plot=DraftP5)


#### Try stat_ecdf()
###Empirical Distribution Function
### Concerned with observations rather than theory. Use data to create cumulative distribution
### The more "separate" the lines are the more different they are from each other 
DraftP6<-mydata%>%
  filter(EXP=="SurfaceSampling", 
         Input=="300",
         Dilution.Factor!="NA")%>% 
  ggplot(aes(x=Ct, color=Method))+
  stat_ecdf()+
  facet_grid(Dilution.Factor~Type)

###save figure
figure_file = here("results","SS300-ECDF.Method.png")
ggsave(filename = figure_file, plot=DraftP6)

## no obvious difference between the methods within sample type

DraftP7<-mydata%>%
  filter(EXP=="SurfaceSampling", 
         Input=="300",
         Dilution.Factor!="NA")%>% 
  ggplot(aes(x=Ct, color=Type))+
  stat_ecdf()+
  facet_grid(Dilution.Factor~Method)
###save figure
figure_file = here("results","SS300-ECDF.Type.png")
ggsave(filename = figure_file, plot=DraftP7)

#significantly different between samples and type <- confirms difference in sensitivity. Interesting not as much in -1

##Let's see the relation between the runs, specifically the CDC since we adjusted the Lysis buffer
DraftP8<-mydata%>%
  filter(EXP=="SurfaceSampling", #Only one set of experiments
         Input=="300", #only 300 input
         Method=="CDC", #only CDC method
         Dilution.Factor!="NA")%>%  #Removes NA in Dilution.Factor
  ggplot(aes(x=Ct, color=PCR))+ #Color PCR as there's a difference in method adjustment
  stat_ecdf()+
  facet_grid(Dilution.Factor~Type)

###save figure
figure_file = here("results","SS300-ECDF.PCR.png")
ggsave(filename = figure_file, plot=DraftP8)

##Appears that there are some differences once it hits -2 dilution factor in SD
##? Less different as dilution decreases.
##Samples 
# Thoughts: 





## RELATED: Q-Q plot

