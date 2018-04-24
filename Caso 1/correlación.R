hh<-"C:/Users/Pablo/Desktop/specdata/"
corr<-function(directorio,horizonte=0){
    todaesamadre<- c()
    for (i in 1:332) {
        if(i<10){
            Locacion<- paste(directorio,"00",i,".csv",sep = "")
        }else if(i<100){
            Locacion<- paste(directorio,"0",i,".csv",sep = "")    
        } else{
            Locacion<- paste(directorio,i,".csv",sep = "")    
        }
        a<- na.omit(read.csv(Locacion, header = T))
        b<- a[,2]
        
        c<- length(b)

    if(c>horizonte){
      sulfato<- data.frame(a[,2])
      nitrato<- data.frame(a[,3])
      esamadre<- cor(sulfato,nitrato)
      todaesamadre<- c(todaesamadre,esamadre)
      
    }
    }    
   table(todaesamadre)
   
}
