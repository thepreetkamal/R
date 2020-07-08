#introduction to heatmaps in R
# June 04,2020

#1. base function: heatmap()
?mtcars
?heatmap

#generating heatmap for mtcars
heatmap(mtcars)

#checking class of mtcars
class(mtcars)

#converting mtcars to matrix
mtcars_mat <-  data.matrix(mtcars)

class(mtcars_mat)

#generating heatmap
heatmap(mtcars_mat,
        scale="column",
        col=rainbow(n=15,alpha=0.9),
        Colv=NA)

?hcl.pals

library(gplots)

?heatmap.2

#import protein data
rawdata <- read.csv("https://raw.githubusercontent.com/ab604/heatmap/master/leanne_testdata.csv")

#keep the numeric columns only in the data set
rawdata <- rawdata[,2:7]

#cleanup data
colnames(rawdata) <-  c(paste("Control",1:3, sep="_"),paste("Treatment",4:6,sep="_"))

#convert to data matrix
data_mat <-  data.matrix(rawdata)

#create a heatmap 2
heatmap.2(data_mat,trace="none")

heatmap.2(data_mat,trace="none",
          Colv="none")

heatmap.2(data_mat,trace="none",margins= c(18,18), Colv="none")
