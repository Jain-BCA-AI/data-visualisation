#Basic Visualization

#Create the data for the Chart

companies <- c("Tata", "Ambani", "Mahindra", "Toyota")
turnover <- c(61,82,90,43)

#Pie Chart
pie(turnover, companies)
#Add a Title
pie(turnover, companies, main = "Using Pre-defined colors of R")

#Rainbow Color Palatte
pie(turnover, companies, col=rainbow(4), main= "Using the Rainbow Color Palette")

pie(turnover, companies, col=rainbow(length(turnover)), main= "Using the Rainbow Color Palette")

#Different Color palatte
#topo, terrain, cm, heat
pie(turnover, companies, col=topo.colors(length(turnover)), main= "Using the Topo Color Palette")

pie(turnover, companies, col=terrain.colors(length(turnover)), main= "Using the Terrain Color Palette")

pie(turnover, companies, col=cm.colors(length(turnover)), main= "Using the CM Color Palette")

pie(turnover, companies, col=heat.colors(length(turnover)), main= "Using the Heat Color Palette")

#Customized Colors
colors = c("Red", "Blue", "Yellow", "Green")
pie(turnover, companies, col=colors, main= "Using the Customized Colors")

#Customized Colors in Clockwise
pie(turnover, companies, col=colors, main= "Using the Customized Colors in Clockwise Direction", clockwise = TRUE)

#Display percentage
percent <-round(100 *turnover/sum(turnover),1)
pie(turnover, percent, col=colors, main= "Using the Customized Colors in Clockwise Direction", clockwise = TRUE)

legend("topleft", companies, cex =0.8, fill = colors)

#3D Pie Chart
install.packages("plotrix")
library(plotrix)

pie3D(turnover, labels=companies, explode = 0.1, main = "3D Pie Chart")

