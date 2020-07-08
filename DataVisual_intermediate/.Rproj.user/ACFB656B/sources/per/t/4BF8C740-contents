#intermediate ggplot2 demo

library(ggplot2)

#import data
gapminder <- read.csv("data/gapminderdata.csv")
nrow(gapminder)
ncol(gapminder)
dim(gapminder)
gapminder$country= as.factor(gapminder$country)
gapminder$continent= as.factor(gapminder$continent)

summary(gapminder)

ggplot(data=gapminder,
        mapping=aes(x=year,
                    y=pop,
                    colour=continent))+
  geom_point() + scale_color_brewer(palette = "Set1")


#control over colours
?scale_color_brewer


#visualise colors palettes
library(RColorBrewer)
display.brewer.all()

display.brewer.all(colorblindFriendly = TRUE)

p <- ggplot(data=gapminder,
            mapping=aes(x=year,
                        y=pop,
                        colour=continent))+
  geom_point()

#creating custom palette
p + 
  scale_color_manual(values=c("#EE3B3B", "#CAFF70", "#8A2BE2", "#EE00EE", "#EE9A00"))


colours()

install.packages("colourpicker")

#modify y scale to spread data
p+
  scale_y_log10()

#modify axis data e.g. on x axis we have gap of 10 years,to fix that
#create a list of years
unique_years <- unique(gapminder$year)

#use vector for breaks
p+
  scale_x_continuous(breaks = unique_years)

#modify y axis
#simplifying breaks on y axis
p+
  scale_x_continuous(breaks = unique_years)+
scale_y_continuous(breaks=c(0,100000000,200000000,500000000,1000000000))

#to further simplify add labels for y axis
p+
  scale_x_continuous(breaks = unique_years)+
  scale_y_continuous(breaks=c(0,100000000,200000000,500000000,1000000000),
                       labels=c(0,"100 m","200 m","500 m","1 b"))
  

#zoom in the particular set of data...e.g see only data excluding ind n china(the result will show the warning)
p+
  ylim(c(0,360000000))


ggplot(gapminder,
       aes(x=lifeExp))+
  geom_histogram()



ggplot(gapminder,
       aes(x=lifeExp))+
  geom_histogram(bins = 10)


ggplot(gapminder,
       aes(x=lifeExp))+
  geom_histogram(binwidth = 10)


ggplot(gapminder,
       aes(x=lifeExp,
           fill=continent))+
  geom_histogram(bins = 10)

5
