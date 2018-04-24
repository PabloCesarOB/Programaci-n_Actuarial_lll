
for (i in 1:10){print(i)}

for (i in c("a","b","c")){print(i)}

#La forma den la que tabaja dor dentro de R es mas similar al for each de VBA

x<- c("a","b","c","d")
 for(i in 1:4){print(x[i])}

for(i in seq_along(x)){print(x[i])}

for (letra in x){print(letra)}

for(i in 1:4) print(x[i])

for(i in 1:10) print(i*3)

x<- matrix(1:6,2,3)
  for(i in seq_len(nrow(x))){
    for(j in seq_len(ncol(x))){
     print(x[i,j]) 
    }
  }

while(count <10){
  print(count)
  count<- count +1
}
y<- ""
contador<-0
#set.seed(1)
z<- 5
while(z>=3 && z<=10){
  
 y<- paste(y,z)
  moneda <- rbinom(1,1,0.5)
  if(moneda==1){#caminata Aleatoria
    z <- z+1
    
  } else{
      z <- z-1
  }
  contador= contador+1
 } 
contador
y
intentos=10000
Abajo=0
Arriba=0
for (i in 1:intentos) {
z<- 6.5
while(z>=3 && z<=10){
  moneda <- rbinom(1,1,0.5)
  if(moneda==1){#caminata Aleatoria
    z <- z+1
    
  } else{
    z <- z-1
  }

} 
if(z<3){
  Abajo= Abajo+1
} else{
  Arriba=Arriba+1
}

}
paste("En",intentos,"intentos, se escapa", Abajo, "veces por abajo y ",Arriba," veces por arriba" )
paste("La probablilidad de salir por arriba es",Arriba/intentos)
paste("La probablilidad de salir por abajo es",Abajo/intentos)