
getwd()

setwd("/Users/chiragchan/Desktop/DV\ Programs/assets")

cur_dir<-getwd()
cur_dir

file1 <- read.csv("/Users/chiragchan/Desktop/DV\ Programs/assets/txt/list_of_programs.txt")
file1
file2 <- read.csv("/Users/chiragchan/Desktop/DV\ Programs/assets/csv/tips.csv")
file2
install.packages("readxl")
library("readxl")
file3<-"/Users/chiragchan/Desktop/DV\ Programs/assets/xlsx/tips.xlsx"

raw_wb <- read_excel(file3)

raw <- as.data.frame(read_excel(file3))


file4 <- read.csv("https://github.com/CSSEGISandData/COVID-19/raw/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_global.csv")
file4

#Creating a Vector with some NA values
x <- c(11,23,NA,10,35,NA)
y <- c(11,23,NaN, NA, 35, NA)
#Check the values with NA
is.na(x)
is.na(y)
#Check the values with NAN
is.nan(x)
is.nan(y)

#Built in dataset
airquality
?airquality
#Function to find which rows doesn't have all the values completely
complete.cases(airquality)

#To summarize the result
table(complete.cases(airquality))

#visualizing the pattern of missing values
install.packages("VIM")
?VIM

library("VIM")
?aggr
aggr(airquality, numbers=FALSE, prop=FALSE)

#aggr() plots the number of missing values for each variable for each combination of variable.

aggr(airquality, numbers=FALSE, prop=TRUE)

aggr(airquality, numbers=TRUE, prop=FALSE)


matrixplot(airquality)
#red = missing values
#the higher values are indicated using the dark shades
#the lower values are indicated using the lighter shades

#Finding correlation between the variables
cor(airquality$Ozone, airquality$Solar.R)

cor(airquality$Ozone, airquality$Wind)

cor(airquality$Ozone, airquality$Temp)

cor(airquality$Ozone, airquality$Month)

cor(airquality$Wind, airquality$Temp)

cor(airquality$Ozone, airquality$Temp)

cor(airquality$Ozone, airquality$Ozone)

mean(airquality$Ozone)

#Excluding the missing values

mean(airquality$Day)
mean(airquality$Ozone,na.rm = TRUE)

#or Specify the column number
mean(airquality[,1], na.rm=TRUE)

#Delete the records with na

newairquality = na.omit(airquality)
newairquality

mean(newairquality$Ozone)

airquality

