#Kernel Density Plots
revenuematrix <-matrix(c(2,9,3,11,9,4,8,7,3,12,5,2,8,10,11,7,12,8,9,6,9,4,5,7), nrow = 4, ncol = 6, byrow = TRUE)
revenuematrix

#Kernel Density Plot for a default bandwidth
plot(density(revenuematrix),col = "Green", main ="Kernel Density Plot")

#Kernel Density Plot using bandwidth = 0.5
plot(density(revenuematrix, bw = 0.5),col = "Green", main ="Kernel Density Plot")

#Kernel Density Plot using bandwidth = 0.1
plot(density(revenuematrix, bw = 1),col = "Green", main ="Kernel Density Plot")

#Filling the polygon
polygon(density(revenuematrix), col = "Green", border = "Red")

#Filling the polygon using bandwidth = 0.5
polygon(density(revenuematrix, bw =0.5), col = "Green", border = "Red")

#Filling the polygon using bandwidth = 1
polygon(density(revenuematrix, bw =1), col = "Green", border = "Red")

#Quantile- Quantile Plot
qqnorm(revenuematrix, main = "Normal Q-Q Plot", col = "red")

#Drawing a Q-Q Line for better understanding
qqline(revenuematrix, col = "Blue")

