rankingcompleto<- function(resultado,num="mejor"){
    datinis <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
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
    
    aa<- datinis[,7]
    aa<-data.frame(aa)
    aa<-(aa[!duplicated(aa),])
    aa<- data.frame(aa)
    res<-data.frame()
    a<-datinis[,2]
    b<-datinis[,resultado]
    c<-datinis[,7]
    
    #####
   
    if(num=="mejor"){
        for (i in 1:54) {
            estado= aa[i,1]
            datinis2<- data.frame(a,b,c)
            datinis2<-(subset(datinis2,c==estado))
            datinis2<-datinis2[order(datinis2$b),]
            datinis2<-subset(datinis2,b==datinis2[1,2])
            datinis2<-(datinis2[order(datinis2$a),])   
            hospital<- datinis2[1,1]
            resp<- data.frame(hospital,estado)
            res<- rbind(res,resp) 
        }
        res
    }else if(num=="peor"){
        for (i in 1:54) {
            estado= aa[i,1]
            datinis2<- data.frame(a,b,c)
            datinis2<-(subset(datinis2,c==estado))
            datinis2<-datinis2[order(datinis2$b),]
            datinis2<-subset(datinis2,b==datinis2[1,2])
            datinis2<-(datinis2[order(datinis2$a),])   
            hospital<- datinis2[length(datinis[,1]),1]
            resp<- data.frame(hospital,estado)
            res<- rbind(res,resp) 
            
        }
        res
    }else if((num/num)==1){
        for (i in 1:54) {
            estado= aa[i,1]
            datinis2<- data.frame(a,b,c)
            datinis2<-(subset(datinis2,c==estado))
            datinis2<-datinis2[order(datinis2$b),]
            datinis2<-subset(datinis2,b==datinis2[1,2])
            datinis2<-(datinis2[order(datinis2$a),])   
            hospital<- datinis2[num,1]
            
    
            resp<- data.frame(hospital,estado)
            res<- rbind(res,resp) 
        
        }
        res
        }else{
        stop("resultado inváilido")
    }
        
    
}
