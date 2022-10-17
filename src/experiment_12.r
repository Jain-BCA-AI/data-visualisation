#Considering the "Iris" data set, plot the following graphs after determining the correlation between 
#the first four variable.
#a. Image plot using heat colors for first four columns
#b. Image plot using gray colors for first four columns with proper naming on axes and title of chart.
#c. Box plot showing length of sepal according to different species.
#d. Violin plot showing length of petal according to different species.

#Display the summary of the dataset
summary(iris)

#Finding correlation between the four variables
cor(iris[,-5])

#Image plot using heat colors for first four columns
image(1:4,1:4, cor(iris[,-5]),col = heat.colors(14))

#Image plot using gray colors for first four columns with proper naming on axes and title of chart.
image(1:4,1:4, cor(iris[,-5]),col = gray.colors(16))

#Add labels to x - axis
mtext(side =1, text=names(iris[-5]), at = seq(from=1, to=4, length = 4), line=1, cex =0.8)

#Add labels to y - axis
mtext(side =2, text=names(iris[-5]), at = seq(from=1, to=4, length = 4), line=1, cex =0.8)

#Title
title(main = "Image Plot of Correlations in Iris Dataset")

#Box plot showing length of sepal according to different species.
boxplot(Sepal.Length~Species, data = iris, xlab = "Species", ylab = "Sepal Length",
        main = "Sepal Length for Different Species", names = c("setosa", "versicolor", "virginica"),
        col = c("green", "yellow", "pink"))

#Box plot showing length of sepal according to different species.
boxplot(Sepal.Length~Species, data = iris, xlab = "Species", ylab = "Sepal Length",
        main = "Sepal Length for Different Species", names = c("setosa", "versicolor", "virginica"),
        col = c("green", "yellow", "pink"), notch = TRUE)

#Violin plot showing length of petal according to different species.
x1 <- iris$Petal.Length[iris$Species=="setosa"]
x2<- iris$Petal.Length[iris$Species=="virginica"]
x3<- iris$Petal.Length[iris$Species=="versicolor"]

install.packages('vioplot')
library(vioplot)
vioplot(x1,x2,x3, names =c("Setosa", "Virginica", "Versicolor"), col = "blue")
title("Violin Plot of Species and Length of the Petal", xlab = "Species", ylab = "Petal Length")
