library("readr")
countries= read_csv("Countries Population.csv")
colnames(countries)= make.names(colnames(countries))
countries$Country.Name= as.factor(countries$Country.Name)
countries$Country.Code= as.factor(countries$Country.Code)
View(countries)

##import second dataset
library(readxl)
countriesmap= read_excel("Countries Region Mapping.xlsx")
View(countriesmap)
summary(countriesmap)
countriesmap$Country.Code=as.factor(countriesmap$Country.Code)
countriesmap$Region = as.factor(countriesmap$Region)
countriesmap$IncomeGroup= as.factor(countriesmap$IncomeGroup)
summary(countriesmap$IncomeGroup)

countriesmap$IncomeGroup= ordered(countriesmap$IncomeGroup, levels=c("Low income","Lower middle income","Upper middle income","High income"))
summary(countriesmap)
class(countriesmap$IncomeGroup)

##import 3rd dataset
countriesInfo=read_csv("Countries Indicators.csv")
summary(countriesInfo)
countriesInfo$Country.Code= as.factor(countriesInfo$Country.Code)
summary(countriesInfo)


##merging data Left Join
temp=merge(countries,countriesmap, by="Country.Code",all.x = TRUE)

##correct inner join
countriesall= merge(countries,countriesmap, by="Country.Code")

##Full Outer JOin
temp2= merge(countriesall,countriesInfo, by="Country.Code",all = TRUE)

##COrrect Left JOin
countriescominfo= merge(countriesall,countriesInfo, by="Country.Code",all.x = TRUE)

rm(temp,temp2)


##Summary tables
smokerData <- read.csv(file='smoker.csv',sep=',',header=T)
summary(smokerData)





