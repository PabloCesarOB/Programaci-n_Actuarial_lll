noise<- function(n,mean,sd){
    rnorm(n,mean,sd )
}

noise(5,1,2)

noise(1:5,1:5,2)

mapply(noise,1:5,1:5,2)

str(tapply)

x<- c(rnorm(10),runif(10),rnorm(10,1))
f<- gl(3,10)
f
tapply(x,f,mean)
tapply(x,f,mean,simplify = F)
str(split)

x<- c(rnorm(10),runif(10),rexp(10))
f<- gl(3,10)
f

lapply(split(x,f), mean)

library(datasets)
 head(airquality)
 split(airquality,airquality$Month)
 sapply(split(airquality,airquality$Month),mean)
 sapply(split(airquality,airquality$Month),colMeans,na.rm=T)
 colMeans(airquality)
 colMeans(airquality,na.rm=T)
 x<- rnorm(10)
 f1<- gl(2,5)
 f2<- gl(5,2)
 f1
 f2
 interaction(f1,f2)
 x
 str(split(x,list(f1,f2)))
 x<-sapply(split(mtcars, mtcars$cyl,hp),colMeans,na.rm=T)
 x[4,]
 means(x[4])
 sapply(split(mtcars$hp,mtcars$cyl),mean)
 sapply(split(mtcars$mpg,mtcars$cyl),mean)