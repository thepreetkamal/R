#setting working directory
setwd("C:/Users/Reetinder/Desktop/R")

getwd()

#getting the dataset
library(readxl)
food<- read_excel("Food Nutrition-1.xlsx")

class(food)
View(food)

#Get first 10 rows
head(food,10)

#get last 20 rows
tail(food,20)

#summary of the data
summary(food)

#Vector "test" for top 10 values of protein_mg
test= head(food$`Protein_(g)`,10)
test

#creating matrix
food[1:5,1:5]

#class of sodium
class(food$`Sodium_(mg)`)

#New variable EPW 
food$EPW = food$Energ_Kcal/food$`Water_(g)`
dim(food$EPW)

#new subset
foodsubset1 <- food[which(food$Energ_Kcal<500),]
foodsubset1

dim(foodsubset1)

#creating plot between energy and water

plot(foodsubset1$Energ_Kcal,foodsubset1$`Water_(g)`)

#histogram between sugar with new data
hist(foodsubset1$`Sugar_Tot_(g)`,main="Sugar frequency",xlab="Sugar Consumption",col=heat.colors(14))

#ranking Energykcal
ranking1= head(food[order(-food$Energ_Kcal),],10)
ranking1

#ranking 2 water
ranking2= head(food[order(food$`Water_(g)`),],10)
ranking2

