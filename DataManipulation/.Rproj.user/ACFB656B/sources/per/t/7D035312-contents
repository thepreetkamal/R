#description: Introduction to data manipulation with dplyr

#import data
gapminder <- read.csv("https://raw.githubusercontent.com/resbaz/r-novice-gapminder-files/master/data/gapminder-FiveYearData.csv")
gapminder$country <-  as.factor(gapminder$country)
gapminder$continent <-  as.factor(gapminder$continent)
library(dplyr)
?filter

#1. filter is used to pick observation-----

#we want to include only Australian data..so that we need logical operator

australia <-  filter(gapminder,country=="Australia")
"this"=="that"
"this" =="this"

life80 <- filter(gapminder,lifeExp>81)

#2. arrange() : reorder rows ----
#highest GDP per capita
arrange(gapminder,gdpPercap)

head(arrange(gapminder,gdpPercap))

head(arrange(gapminder,desc(gdpPercap)))

#3. Select () : pick variables----
gap_small <- select(gapminder, year,country, gdpPercap)

# combine operations
gap_small_97 <-  filter(gap_small,year==1997)

##another method with nesting+

gap_small_1997 <- filter(select(gapminder,year,country, gdpPercap),
                         year==1997)

##3rd approach with pipe opeartor '%>%' Pipe operator is used 
gap_small_1997Pipe <-  gapminder %>% 
  select(year,country, gdpPercap) %>% filter(year==1997)

gapminder %>%summary()

#challenge question: 2002 life expectancy of Eritrea

er_2002 <-  gapminder %>% select(lifeExp,country,year) %>% filter(year==2002,country=="Eritrea")

#4. mutate(): create new variable----
gap_gdp <-  gapminder %>% 
  mutate(gdp=gdpPercap*pop)

gap_gdp_new <-  gapminder %>% 
  mutate(gdp=gdpPercap*pop,gdp/10^6)

#5. Summarise(): will collapse to a single summary----
gapminder %>% summarise(mean(lifeExp))

gapminder %>% summarise(meanLE=mean(lifeExp))

#6. Group_by() : To change the scope----
gapminder %>% group_by(continent)

#mean LE for each continent in 2007
gapminder %>% filter(year==2007) %>%  group_by(continent) %>%  summarise(meanLE=mean(lifeExp))

#max LE for each country
maxLE <-  gapminder %>% group_by(country) %>%  summarise(max(lifeExp))
View(maxLE)

?starwars
starwars %>% group_by(species)