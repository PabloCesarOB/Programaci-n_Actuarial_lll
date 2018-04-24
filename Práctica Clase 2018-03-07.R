setwd("C:/Users/Pablo/OneDrive/Documents/GitHub/Programaci-n_Actuarial_lll")

#Extracción de valores faltantes
airquality[1:6,]
completos<- complete.cases(airquality[1:10,])
data<- airquality[completos,]
data[1:6,]
#Al hacer una extracción desde un vetor de logicos, obtengo solo con los valores que son TRUE

#Algunas operaciones
x<- 1:4; y<-6:9
x+y
x>2
x>=2
y==8
x*y
x/y
x <- matrix(1:4,2,2); y <- matrix(rep(10,4),2,2)
x;y
x*y
x/y
x%*%y
x;y;x%*%y
x=3

if(x>5){"Mayor a 5"} else{"Menor a 5"}

x=3
if(x==5){
  "Igual a 5"
} else if(x>5){
  "Mayor a 5"
} else{
  "Menor a 5"
}

x=10
if(x==10){
  "Igual a 10"
} else if(x<12){
  "Menor a 12"
} else{
  "Mayor"
}

x=5
if(x>3){
  y<-10
} else {
  y<-0
}

y <- if (x>3){
  10
}else {
  0
}

