#data <- read.table("foo.txt")
data <- read.table("data.txt", nrows=100)
clases <- sapply(inicio, class)
data <- read.table("data.txt", colclasses =clases)


y <- data.frame(a=1,b="a")
y
dput(y)
dput(y,file="~/github/softwareactuarial3/y.R")
# ~/github/softwareactuarial3/

#Genero un nuevo objeto a partir de la informacion guardada
y2 <- diget(file="~/github/softwareactuarial3/y.R")

#Almacenar en tu disco duro la base de datos mtcars en un archivo "cars.R" y porteriormente
#guardarlo en un dataframe nuevo que se llame carros(Inserte nombre)
