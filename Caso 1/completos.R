completos<-function(directorio,id=1:332){
   
    a<- 0
    b<- 0 
    c<- 0
    centipede<-data.frame()
    
     for (i in id) {
        if(i<10){
            Locacion<- paste(directorio,"00",i,".csv",sep = "")
        }else if(i<100){
            Locacion<- paste(directorio,"0",i,".csv",sep = "")    
        } else{
            Locacion<- paste(directorio,i,".csv",sep = "")    
        }
        a<-na.omit(read.csv(Locacion, header = T))
        a<- c(a[,3],a[,2])
        b <- a[!is.na(a)]
       nobs<- length(b)/2
       
       human<-data.frame(nobs)
       centipede<-rbind(centipede,human)
    }    

centipede
}
hh<-"C:/Users/Pablo/Desktop/specdata/"
