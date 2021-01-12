e_quakes <- datasets::quakes

#First 10 observations
head(e_quakes , 10)

#Last 10 observations
tail(e_quakes , 10)

#showing specific columns
e_quakes[,c(2,3)]
df <- e_quakes[-5]

#Showing summary
summary(e_quakes$lat)
summary(e_quakes$long)
summary(e_quakes$depth)
summary(e_quakes$mag)
summary(e_quakes$stations)


#Plotting the columns
plot(e_quakes$lat)
plot(e_quakes$long)
plot(e_quakes$depth)
plot(e_quakes$mag)
plot(e_quakes$stations)

#Plotting the points and lines
plot(e_quakes$lat , type = 'l')
plot(e_quakes$long , type = 'p')

plot(e_quakes$depth , xlab = 'Deapth (in Units)' , ylab = 'Index' , main = 'Earthquake Deapth' , col = 'blue')

#plotting horizontal barplot
barplot(e_quakes$depth, main = 'Earthquake depth', ylab = 'depth', col= 'blue',horiz = F,axes=T)

#plotting histogram
hist(e_quakes$lat)
hist(e_quakes$long)     
hist(e_quakes$depth)
hist(e_quakes$mag)

hist(e_quakes$depth, main = 'Earthquake depth', xlab = 'depth', col = 'blue')


#plotting single box plot
boxplot(e_quakes$lat, main= 'boxplot')

boxplot(e_quakes[,1:4], main = 'multiple boxplot')



par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")

plot(e_quakes$lat)
plot(e_quakes$lat, e_quakes$long)
plot(e_quakes$depth, type= "l")
plot(e_quakes$lat, type= "l")
plot(e_quakes$mag, type= "l")
barplot(e_quakes$lat, main = 'Earthquake Lattitude',
        xlab = 'lattitude', col='green',horiz = TRUE)
hist(e_quakes$stations)
boxplot(e_quakes$mag)
boxplot(e_quakes[,0:4], main='Multiple Box plots')
