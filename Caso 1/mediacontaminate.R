hh<-"C:/Users/Pablo/Desktop/specdata/"
mediacontaminante<- function(directorio,contaminante,id=1:332){

if(contaminante=="sulfate"){
fuck= 2
}else if(contaminante=="nitrate"){
 fuck=3   
}
    
a<- 0
b<- 0 
c<- 0

for (i in id) {
    if(i<10){
        Locacion<- paste(directorio,"00",i,".csv",sep = "")
    }else if(i<100){
        Locacion<- paste(directorio,"0",i,".csv",sep = "")    
    } else{
        Locacion<- paste(directorio,i,".csv",sep = "")    
    }
    a<-read.csv(Locacion, header = T)
    a<- a[,fuck]
    b<- c(a,b)
} 
c <- b[!is.na(b)]
b<- sum(c)/length(b) 
b
}
