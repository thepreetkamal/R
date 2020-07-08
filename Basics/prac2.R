library(readxl)
library(readr)
setwd("C:/Users/Reetinder/Desktop/R")

getwd()

houseprices= read_csv("houseprices-1.csv")
summary(houseprices)
table(houseprices$Bedrooms)
summary(houseprices$Bedrooms)

table(houseprices$Age)


houseprices1 <- houseprices[which(houseprices$Price<=50000),]

houseprices1

houseprices2 <- houseprices[which(houseprices$Price<=50000 & houseprices$Bedrooms==3 ),]
houseprices2

x<-(2:200)
y<-2*x-8
boxplot(x,y)
xsq=x^2
plot(x,xsq)


barplot(table(houseprices$Price))

hist(houseprices$Price,main="Prices",xlab="price",ylab="frequency",col="blue")
