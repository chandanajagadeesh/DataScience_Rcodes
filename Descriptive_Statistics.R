

airquality <- datasets::airquality

###Top 10 rows and last 10 rows
head(airquality, 10)
tail(airquality, 10)



###(Slicing operation)Columns
airquality[, c(1, 2)]     

df <- airquality[, -6]    #Deletes the 6th column
df

airquality$Temp           #Accessing column values in the data


#Summary of the data

summary(airquality$Ozone)   #Summary of the column

summary(airquality)         #Summary for the whole data


###(Plot)Visualization
plot((airquality$Wind))

plot(airquality$Temp, airquality$Wind, type = "p")  #Gives Scatter Plot 
#Conclusion as temp goes up wind is going down 

plot(airquality)

#Points and lines
plot(airquality$Wind, type = "l")    #p:points, l:lines, b:both

plot(airquality$Wind, xlab = 'Ozone Concentration', 
     ylab = 'No of Instances', main = 'Ozone levels in NY city',
     col = 'blue')

###Horizontal bar plot
barplot(airquality$Ozone, main = 'Ozone Concentration in air',
        ylab = 'Ozone levels', col = 'blue', horiz = F, axes = T)


###Histogram
hist(airquality$Temp)
hist(airquality$Temp, main = 'Solar Radiation Values in Air',
     xlab = 'Solar rad.', col = 'blue')

###Single box plot
boxplot(airquality$Wind,main="Boxplot")
boxplot.stats(airquality$Wind)$out          #Gives the outlier values


### Multiple box plots
boxplot(airquality[,1:4],main='Multiple')


###margin of the grid(mar), 
###no of rows and columns(mfrow), 
###whether a border is to be included(bty) 
###and position of the 
###labels(las: 1 for horizontal, las: 0 for vertical)
###bty - box around the plot "n" stands for no boundary and "o" stands for boundary


par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')
