#description of data visualisation -Introduction

#load the packages
library(ggplot2)

# 3essential elements----
#shortcut function -qplot()

#qplot(data=msleep)
qplot(data=msleep,
      x=conservation,
      geom="bar")

#scatter plot 
#Ques: How unemp changes over years?
ggplot(data=economics,
       mapping=aes(x=date,
                   y=unemploy))+
  geom_point()

#Ques: Relationship between fuel efficiency and engine size?
ggplot(data=mpg,
       mapping=aes(x=displ,
                   y=hwy))+
  geom_point()

ggplot(data=mpg)
#Empty graph

summary(mpg)
View(mpg)
str(mpg)
#str - 234 * 11

?mpg$drv
?mpg
#the type of drive train, where f = front-wheel drive, r = rear wheel drive, 4 = 4wd

ggplot(data=mpg,
       mapping=aes(x=hwy,
                   y=cyl))+
  geom_point()

ggplot(data=mpg,
       mapping=aes(x=class,
                   y=drv))+
  geom_point()

nrow(mpg)
ncol(mpg)

library(dplyr)
glimpse(mpg)
glimpse(mpg)

ggplot(data=mpg,
       mapping=aes(x=displ,
                   y=hwy,
                   colour=class))+
  geom_point()


#trendlines
ggplot(data=mpg,
       mapping=aes(x=displ,
                   y=hwy))+
  geom_smooth(method="lm")

ggplot(data=mpg,
       mapping=aes(x=displ,
                   y=hwy))+
  geom_point()+
  geom_smooth(method="lm")


ggplot(data=economics,
       mapping=aes(x=date,
                   y=unemploy))+
geom_point(mapping=aes(colour=pop))+
  geom_smooth()
View(economics)


?diamonds
ggplot(diamonds,aes(x=cut,fill=clarity))+
  geom_bar()

ggplot(diamonds,aes(x=cut,colour=clarity))+
  geom_bar()

ggplot(diamonds,aes(x=cut))+
  geom_bar(fill="tomato")+
  labs(title="Practice dataset",
       x="Quality of Cut",
       y="No of diamonds")

ggplot(diamonds,aes(x=cut))+
  geom_bar(fill="tomato")+
  labs(title="Practice dataset",
       x="Quality of Cut",
       y="No of diamonds")+
      coord_flip()

ggplot(diamonds,aes(x=cut))+
  geom_bar(fill="tomato")+
  labs(title="Practice dataset",
       x="Quality of Cut",
       y="No of diamonds")+
 # coord_flip()+
  theme_classic()
