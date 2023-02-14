#barcharts, histograms,rug, curve
#datasets mtcars and lynx


#histograms for quantitative, scaled,
#intervel, ratio level etc
head(iris)
hist(iris$Petal.Width) #spaces
#we try to define the histogram
par(mfrow=c(3,1)) # 3 rows, 1 column

hist(iris$Petal.Width [iris$Species == "setosa"], 
xlim=c(0,3),
breaks=9,
main="petal width for setosa",
xlab="petal wisdth",
col="red")

hist(iris$Petal.Width [iris$Species == "versicolor"], 
     xlim=c(0,3),
     breaks=9,
     main="petal width for versicolor",
     xlab="petal wisdth",
     col="red")

hist(iris$Petal.Width [iris$Species == "virginica"], 
     xlim=c(0,3),
     breaks=9,
     main="petal width for virginica",
     xlab="petal wisdth",
     col="yellow")
par(mfrow=c(1,1)) #number of plotwidth in a histogram

library(datasets)
?mtcars
head(mtcars)
a<-table(mtcars$cyl)
barplot(a)
plot(a) #isnt user readable
hist(mtcars$wt)
hist(mtcars$mpg)
plot(mtcars$wt, mtcars$mpg,
     pch=20,
     cex=1.5,#150%larger size
     col="red",
     main = "wt vs mpg",
     xlab = "weight of the car",
     ylab = "mpg")

library(datasets)
?lynx
head(lynx)
hist(lynx,
     freq=FALSE,
     col="red",
       main=paste("histogram"),
       xlab="lynx trapped")
curve(dnorm(x, mean = mean(lynx), sd= sd(lynx)),
      lwd=2,
      add = TRUE)# command for putting 
#norm on the previous graph
#KDE 
lines(density(lynx),col="blue")
#rugplot vertical lines beneath the xaxis
?rug
rug(lynx, lwd = 2, col = "black")
?paste0




