install.packages("readr")
install.packages("readxl")
library(readr)
setwd("C:/Users/Reetinder/Desktop/R")
getwd()
countries= read_csv("Countries Population.csv")
summary(countries)
countries$`Country Name`=as.factor("countries$`Country Name`")
countries$`Country Code` = as.factor("countries$`Country Code`")
str(countries)
countries2= read_csv("Countries Population.csv")
countries2$`Country Name`=as.factor(countries2$`Country Name`)
countries2$`Country Code` = as.factor(countries2$`Country Code`)
summary(countries2)
colnames(countries2)= make.names(colnames(countries2))
colnames(countries2)
summary(countries2)

Firstcountries= head(countries2$Total.Population.2017,10)
View(Firstcountries)

##create logical vector
Bigcountries= Firstcountries>10000000
View(Bigcountries)

bigcountries2= countries2[countries2$Total.Population.2017>10000000,]
View(bigcountries2)
bigcountries2
smallcountries= countries2[countries2$Total.Population.2017<=2000000,]
View(smallcountries)

smallandbigcountries= countries2[countries2$Total.Population.2017>10000000 & 
                              countries2$Total.Population.2017<=2000000,]
View(smallandbigcountries)      

smallorbigcountries= countries2[countries2$Total.Population.2017>10000000 |
                                   countries2$Total.Population.2017<=2000000,]
View(smallorbigcountries)   

#Binding i e. Appending Dataset
big.and.small.coutries= rbind(smallcountries, Bigcountries)
View(big.and.small.coutries)
## this is the result of view(smallorbigcountries)

##Binding columns

countriesflag= big.and.small.coutries$Total.Population.2017>10000000
View(countriesflag)

TotalFlags= cbind(countriesflag, big.and.small.coutries)
View(TotalFlags)
summary(TotalFlags)
##transformation

View(countries2)
countries2$Total.Population.2017.Millions= countries2$Total.Population.2017/10000000
View(countries2)
totalpop1= countries2$Total.Population.2017/1000000
View(totalpop1)
View(countries2$totalpop)
View(countries2)
examp= cbind(countries2,totalpop1)
View(examp)

countries2$randTrans= log(countries2$Total.Population.2017)
View(countries2$randTrans)
View(countries2)

countries2$randTrans1= exp(countries2$randTrans)
View(countries2$randTrans1)
View(countries2)

##Sorting in ascending order
countries2 = countries2[order(countries2$Total.Population.2017),]
View(countries2)


##Sorting in descending order
countries2 = countries2[order(-countries2$Total.Population.2017),]
View(countries2)

