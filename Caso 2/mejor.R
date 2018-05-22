setwd("C:/Users/Pablo/Documents/César/BUAP/Tercer Semestre/Programación 3/Caso 2")



mejor <- function(estado,resultado){
    datinis <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
    a<-0
    n<- datinis[,7]
    x<-length(n)
    n<-matrix(n)
    for (i in 1:x) {
        if(estado==n[i,1]){
            break()
        }else {
            a<-a+1
        }
        
    }   
    if(a==x){
        stop("estado inválido")
    }
    
    if(resultado=="heart attack"){
      resultado=11
  }else if(resultado=="heart failure"){
     resultado=17 
  }else if(resultado=="pneumonia"){
      resultado=23
  }else{
      stop("resultado inválido")
  }
    
    a<-datinis[,2]
    b<-datinis[,resultado]
    c<-datinis[,7]
    datinis<- data.frame(a,b,c)
    datinis<-(subset(datinis,c==estado))
    datinis<-datinis[order(datinis$b),]
    datinis<-subset(datinis,b==datinis[1,2])
    datinis<-(datinis[order(datinis$a),])
    datinis<- datinis[[1,1]]
    datinis
}

