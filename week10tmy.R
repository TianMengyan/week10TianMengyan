#######1.
getwd()
data9<- read.csv("/Users/tianmengyan/Desktop/week10TianMengyan/TMY.csv")
data9

######2.

####Filter out the two columns of value changes####
class(data9)
colnames(data9)
library(dplyr)

data10 <-select(data9,Period,Data_value)
data10
#####Filter out values greater than 35###
data11<-filter(data10,Data_value>35,)
data11

#####Make the data into a data frame format###
library(data.table)

nrow(data11)
ncol(data11)
names(data11)
DF=data.frame(data11)
DF
#######Understand the user situation and statistical values of the data (unique value, average value, maximum small value, value loss)###
library(Hmisc)

data11<- data.frame(x=rnorm(25),y=sample(c('Period','Data_value'),25,TRUE))

describe(data11)
######View the first six columns and the last six columns of the data separately###
library(reshape2)

data12<-melt(data11)

head(data12)
tail(data12)
####

######3.

########
getwd()
data9<- read.csv("/Users/tianmengyan/Desktop/week10TianMengyan/TMY.csv")
data9

#####use factor function for Series_title_1#####
data8<-factor(data9$Series_title_1)
data8[1:100]

#######use sapply function to get mean#####
data7=split(data9$Data_value,data9$Series_reference)
data7
data6=sapply(data7,mean)
data6
#######
