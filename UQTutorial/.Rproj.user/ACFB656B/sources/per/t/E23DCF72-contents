#Description: Intro to R and R Studio
#Author: Preet Kamal
#Date Modified: June 02,2020

#import some data

download.file(url="https://raw.githubusercontent.com/resbaz/r-novice-gapminder-files/master/data/gapminder-FiveYearData.csv",destfile = "data/gapminderdata.csv")
#import tabular data as dataframe
gapminder <- read.csv("data/gapminderdata.csv")

#explore the data
str(gapminder)
summary(gapminder)
head(gapminder)
View(gapminder)

#find the max life expectancy
max(gapminder$lifeExp)

#extend R with packages
library(praise)
praise()

library(ggplot2)
gapminder$country= as.factor(gapminder$country)
summary(gapminder)
qplot(data=gapminder
      ,x=gdpPercap,
      y= lifeExp,
      colour=continent,
      geom="point")
