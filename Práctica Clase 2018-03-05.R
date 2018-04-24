#Dump y Source
  
setwd("C:/Users/Pablo/OneDrive/Documents/GitHub/Programaci-n_Actuarial_lll")
x<- "Programaci-n_Actuarial_lll"
y<-data.frame(a=1,b="a")
dump(c("x","y"),file="data.R")

#Quitar los elemntos
rm(x,y)              

source("data.R")

#domp y source trabajan con las instrucciones de código que permitirán volver a construir u objeto en lugar de obtenerlo deade alguna ubicación guardada

con<- url("https://www.fcfm.buap.mx/")
x<- readLines(con,7)
x
writeLines(readLines(con),"FCFM.txt")
x[7]<- "\t<title>HOLAS</title>"
writeLines(x,"FCFM.html")

#Subconjuntos
#Creamos un vetor
x<- c("a","b","c","c","d","e")
#Veamos el vector
x
#Extraemos elementos don []
x[1]
x[2]
#También podemos extraer una secuencia de elementos
x[1:4]
#Es posible ectraer los elemntos que cumplen una restricción 
x[x>"b"]
#De manera equivalente se puede obtener un vetor lógico
u<-x=="c"
u
x[u]

#Creamos una lista
x<- list(foo=1:4,bar=0.6)
x
x[1]
#El l resultado es una lista que contienen al vector de la secuencia
x[[1]]
#El resultado es el vetor de la secuencia de numeros
x$foo
#El resultado fue un vector como el de doble corchete [[]]
x["bar"]
x[["bar"]]

x<- list(foo=1:4,bar=0.6, baz="Hola")
x[c(1,3)]
#Extrae elementos secuenciales 1 si, 2 no, 3 si
x[[c(1,3)]]
#Extrae secuencialmente desde los elemntos extraidos
#Primero extrae el 1er elemento y de ahí extrae la 3ra posición

name <- "baz"
x[name]
x[[name]]
x$name
#Si yo quiero realizar extracciones con el $, esnecesario escribir el nombre del objeto que quiero extraer
#de lo contrario 

#Se pueden extraer elementos de los elementos extraidos
x<- list(a=list(10,12,14),b=list(3.14,2.81))
x[[c(1,3)]]
x[[1]][[3]]

x<- matrix(1:6,3)
x
x[1,2]
x[2,1]
x[1,]
x[,2]

x<- matrix(1:6,2,3)
x
#El resultado es un vector
x[1,2]
#Con dop= False, se mantiene la dimensión y el vector será una matriz
x[1,2,drop=FALSE]
x<- matrix(1:6,2,3)
x
#Si dejamos solamente el espacio, el resultado será un vector
x[1,]
#Si usamos drop= FALSE, el resultado será una matriz
x<- list(aardvark=1:5)
x$a
x[["a"]]
x[["a",exact=FALSE]]
