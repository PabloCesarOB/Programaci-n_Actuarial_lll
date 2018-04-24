x<- list(a=1:5,b=rnorm(10000))
lapply(x,mean)

x<- list(a=1:5,b=rnorm(10),c=rnorm(10,1),d=rnorm(10,2))
lapply(x, mean)

x<- 1:4
lapply(x,runif)
lapply(x,runif,max=15,min=5)

x<- list(a=1:5,b=rnorm(10),c=rnorm(10,3),d=rnorm(10,5))
lapply(x,mean)
sapply(x,mean)
str(apply)

x<- matrix(rnorm(200),20,10)
apply(x,2,mean)
apply(x,1,sum)

x<-matrix(rnorm(2000),20,100)
apply(x,1,quantile,probs=c(0.25,0.75))

a<-array(rnorm(2*2*10),c(2,2,10))
apply(a,c(1,2),mean)
rowMeans(a,dims = 2)

list(rep(1,4),rep(2,3),rep(3,2),rep(4,1))
mapply(rep,1:4,4:1)

