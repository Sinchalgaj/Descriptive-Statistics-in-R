# comments
vect1 <- c(1,2,3)
vect2=c(1,2,3,4,'salem')

var<-vect1[1:4]

vect[c(1,3)]

df<-data.frame(x=1:3,y=c("4","A","C"),z=rep(1,3))
df[1:3,1:2]

airquality <- datasets::airquality
airquality[50:60,c(1,2)]

df<-airquality[,-6]
airquality$Wind
airquality$Month
plot(airquality$Wind, type="1")
plot(airquality$Ozone)
