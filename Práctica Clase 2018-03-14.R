for(i in 1:100){
  if(i<=20){
    next
    #Evita hacer las primeras iteraciones
  }
  #Otras instrucciones
}

repeat{
  i<- i+1
  print(paste("HOLAS",i))
  if(i>=1000){
    break
  }
}