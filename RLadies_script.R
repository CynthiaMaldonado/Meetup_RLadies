# a. Tipos de datos
1
a
class(1) #integer es un subtipo de numeric
class(a)
'a'
class('a')
1 < 2
class(1 < 2)

# b. Objetos de datos más comunes
# Vectores y matrices
c(1, 2, 3, 4)
c('a', 'b', 'c', 'd')

# Listas
c(1, 2, 'a', 'b')

# Data frames
datasets::AirPassengers

################################################

# 0. Comprobar y fijar directorio 
getwd()
setwd('C:/Users/34671/Documents/R_tutorials')
getwd()

# 1. Asignar variable y realizar operaciones aritméticas
mango <- 10
manzana <- 5
pera <- 15

resultado <- 2 * mango + 1.5 * manzana + 1 * pera
resultado

# La operaciones de suma, resta, multiplicación división, exponenciación,
# división entera y módulo se realizan, respectivamente, mediante los símbolos 
# +, -, *, /, ^, %/%, y %%. 

# Suma de variables CHAR
mango_str <- 'diez'
manzana_str <- 'cinco'
pera_str <- 'quince'

resultado_str <- paste(mango_str, ' ', manzana_str, ' ', pera_str)
resultado_str


# 2. Identificar distintos tipos de datos en R
class(pera)
class(resultado_str)

mango > manzana
class(mango > manzana)

# 3. Vectores
# Crear vectores. La c() es de combinar
# Realizar operaciones aritméticas con vectores
# Seleccionar elementos en un vector

#Creamos vectores de título, puntuación y si el título es posterior a 2005
titulo <- c('Shrek', 'Shrek 2', 'Shrek Tercero', 'Shrek: Felices por siempre')
puntuacion <- c(7.9, 7.2, 6.1, 6.3)
post_2005 <- c(FALSE, FALSE, TRUE, TRUE)

# Me gustó mucho
puntuacion + 2

# A ti no, y piensas que soy una flipada
puntuacion / 2

# Mi puntuación
puntuacion_cyn <- c(9, 7, 8, 7)
diferencia <- puntuacion_cyn - puntuacion
diferencia

# Longitud del vector 
length(puntuacion)

# Media
mean(puntuacion)

# Selección en función de la posición
titulo[3]
titulo[c(1,4)]

# Selección en función de una condición
puntuacion_baja <- puntuacion < 7
puntuacion_baja
titulo[puntuacion_baja]

# Bucle for:
puntuacion <- c(7.9, 7.2, 6.1, 6.3)
length(puntuacion)

for(i in 1: length(puntuacion)) {
  print(i)
  print(puntuacion[i])
  puntuacion[i] <- 10
  print(puntuacion)
}

# 4. Data Frames:
# Crear dataframe
shrek_data <- data.frame(titulo,
                         puntuacion,
                         post_2005)

# Seleccionar elementos
shrek_data[3, 2] #fila, columna
shrek_data[3, 'puntuacion']
shrek_data[3, ]
shrek_data[ , 'titulo']
shrek_data$titulo 

# Exportar DF
write.csv(shrek_data, file = 'mi_primer_df.csv')

save #ver sugerencias

# Importar DF
rm(shrek_data)
install.packages('readr')
library(readr)
file.choose()
ruta_csv <- "C:\\Users\\34671\\Documents\\R_tutorials\\mi_primer_df.csv"
shrek_data <- read_csv(ruta_csv)
hist(shrek_data)

# Se puede mportar también desde files o cabecera/file


# Datasets y plots exportables
airquality
datos <- airquality
plot(datos)
hist(datos$Ozone)


# Enumerar y borrar variables del entorno
ls() #listar variables del entorno
rm() #borrar la variable que indiquemos
rm(list = ls()) #borrar todas las variables

# ctrl+l borrar consola


