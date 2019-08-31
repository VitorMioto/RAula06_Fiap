x <- -10:10
plot(x=x, y=x**2, main = 'Parábola', type= 's')

dim(cars)
summary(cars)
plot(x=cars$speed, y=cars$dist, Main = 'Cars')
plot(cars)
cor(cars)
hist(cars$speed)
hist(x^2, col="yellow")

?hist

summary(airquality)
boxplot(airquality)

library(dplyr)

airquality %>% filter(airquality$Month==5) -> x

x = airquality %>% filter(airquality$Month==5) %>% select(Month, Ozone)
x
x %>% arrange(Ozone) -> x

x %>% mutate(n=seq_along(.$Ozone)) %>% select(n,Ozone) -> zz
summary(zz)

plot(zz)
lines(x= c(1,31), y=c(115,115), col='blue')
lines(x= c(1,31), y=c(31.5,31.5), col='blue')
lines(x= c(1,31), y=c(18,18), col='red')
lines(x= c(1,31), y=c(11,11), col='blue')
lines(x= c(1,31), y=c(1,1), col='blue')

f1 <- formula(y~j)      


f1<- o~m
o=airquality$Ozone
m=airquality$Month
boxplot(f1)
f3 <- o3~m3
boxplot(f3)
e3<-new.env()
e3$o3 <- airquality$Ozone
e3$m3 <- airquality$Month
boxplot(f3,data=e3)
oz = airquality$Ozone
wd = airquality$Wind

plot(x=airquality$Wind, y=airquality$Ozone)
f4<-oz ~ wd
rg <- lm(f4)
summary(rg)
plot(wd,oz)
lines(c(x0,x1),c(y0,y1), col='purple')
abline(rg,col='green')
View(rg$coefficients)
x0 = min(airquality$Wind)
x1 = max(airquality$Wind)
y0 = rg$coefficients[1] + rg$coefficients[2]*x0
y1 = rg$coefficients[1] + rg$coefficients[2]*x1

install.packages("lattice")
library(lattice)
state <- data.frame(state.x77, region =state.region)
xyplot(Life.Exp ~ Income | region,
       data = state,
       layout = c(4, 1))

install.packages("plotly")
library(plotly)

plot_ly(data = airquality,
        x = ~Wind, y = ~Ozone,
        text = ~paste0(Day, '/', Month),
        type = 'scatter', mode ='markers') -> p
#Exibe p
print( p )


