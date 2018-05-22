rankhospital<- function(estado,resultado,num="best"){
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
    
    ####
    if(resultado=="heart attack"){
        resultado=11
    }else if(resultado=="heart failure"){
        resultado=17 
    }else if(resultado=="pneumonia"){
        resultado=23
    }else{
        stop("resultado inválido")
    }
    #####
    a<-datinis[,2]
    b<-datinis[,resultado]
    c<-datinis[,7]
    datinis<- data.frame(a,b,c)
    datinis<-(subset(datinis,c==estado))
    datinis<-datinis[order(datinis$b),]
    datinis<-subset(datinis,b==datinis[1,2])
    datinis<-(datinis[order(datinis$a),])
    rank<-c(1:length(datinis[,2]))
    datinis<- cbind(datinis,rank)

    if(num=="best"){
        datinis[1,1]
    }else if(num=="worst"){
        datinis[length(rank),1]
    }else if(num<length(rank)){
        datinis[num,1]
    }else{
        datinis<- NA
        datinis
    }
    
}
