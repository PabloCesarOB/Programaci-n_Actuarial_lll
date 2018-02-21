#Aquí se esta realizando una asignación
x<-1
x<-2

#La asignación no me permitió visualizar e resultado, para ello debo solicitar una impresión
print(x)

# Al poner mayúscula, que no ha sido definida, me marcará error
print(X)

#La alternativa es solicitar una impresión implicita
x

#La asignación puede hacerse también de textos
msg<- "Hola"

#Al solicitar una impreaión, me deberá enseñar el mensaje que esta 
print (msg)

x<- #Expresión icompleta, para salir de ella (dejar de ejecutar esa instrucción completa) puedes presionar ESC
  
#Impresión de un arreglo
x<- 1:20
x
y<-3:9
y
z<- 99:43
z
#El operador ":" me permite generar secuencias de un principio a un fin
w<-3:14.5
w
#El el caso de trabajar con decimales, me genera secuencias hasta los enteros correspondientes

#Caracteres (Character)
#Numeros reales (Numeric)
#Enteros (Integer)
#Números complejos (Complex)
#Booleanos (Logical)

1 #Es un objeto nuumérico
1L #Es un entero
#Atributos: Nombres, nombres de dimensión Dimensiones Clases Largo Usuario/Metadata

#R nos permite trabajar con conceptos matemáticos "superiores" como los números complejos o como el concepto de número infinito
Inf 
1/0
#Es posible hacer algunas operaciones con este valor
exp(-Inf) # 0
Inf+Inf # Inf
Inf*Inf #Inf
Inf-Inf #NaN (Not a Number)
Inf/Inf # NaN

#Cada objeto tiene sus propiedades o atributos los cuales se pueden acceder a partir de la función
attributes(z)
# Es posible crear un vector con la función c()
x<- c (TRUE, FALSE, TRUE, TRUE, F, F, T) #Logical
x<- c (1L,3L,5L,-4L)                     #Integer
x<- c (1,3,5,-4)                         #Numeric
x<- c (1+1i,3+4i,-5-6i,3.14-1.618i)      #Complex
x<- c ("a","b","c","Hola","Mundo")       #Character

# Otro posible camino sería con la función vector
x <- vector("numeric", length=10)
x
#El vector se crea vacío

y<- c(1.7, "a")         #Character
y<- c(TRUE, 2L,2)       #Numeric
y<- c(FALSE,2L,5,5+4i)  #Complex

#Coerción forzada
x<- 0:6  
class(x)
as.numeric(x)
as.logical(x)
as.character(x)
x<- c("a","b","c")
as.numeric(x)
as.logical(x)
as.complex(x)
#Aparecen NA porque esa coerción no es posible y genera un valor NA
