#===========================================#
# author: Eduard Fernando Martínez González
# update: 19-04-2023
# R version 4.1.1 (2021-08-10)
#===========================================#

## initial configuration
rm(list=ls()) # limpiar entorno

## load packages
require(pacman)

## usar la función p_load de pacman para instalar/llamar las librerías de la clase
p_load(tidyverse, # funciones para manipular/limpiar conjuntos de datos.
       rio, # función import/export: permite leer/escribir archivos desde diferentes formatos. 
       skimr, # función skim: describe un conjunto de datos
       janitor) # función tabyl: frecuencias relativas

# load packages
require(pacman)
p_load(tidyverse , rio , data.table , png , grid)

## Hoy veremos

### **1.** Bucles

### **2.** Controles de flujo

### **3.** Aplicación CHIP

#=================#
#=== 1. Bucles ===#         
#=================#

#----------------------#
## Estructura de datos
browseURL(url = "https://www.datacamp.com/community/tutorials/tutorial-on-loops-in-r", browser = getOption("browser")) # Datacamp
browseURL(url = "https://bookdown.org/jboscomendoza/r-principiantes4/estructuras-de-control.html", browser = getOption("browser")) # R para principiantes
browseURL(url = "https://intro2r.com/loops.html#for-loop", browser = getOption("browser")) # intro2r

#----------------------#
## Estructura de datos
dev.off()
grid.raster(readPNG("input/pics/bucle_flow.png")) # source: datacamp

#----------------------#
## Estructura de un bucle (for)
vector =  1:5
for (i in vector){ # Vector sobre el que se va a aplicar el loop
     casa = i*i  # Sobreescribe i como el resultado de i*i
     print(casa) # Pinta el resultado sobre la consola
}

cat("Hacer ejemplo en clase")
results = tibble(i = 1:5 , resultado = NA)
for (i in vector){ # Vector sobre el que se va a aplicar el loop
     n = i
     # Sobreescribe i como el resultado de i*i
     # Pinta el resultado sobre la consola
     # Guardar resultado
}

cat("Hacer ejemplo en clase")
results$resultado2 = NA
for (i in vector){ # Vector sobre el que se va a aplicar el loop
     #n = i
     # Sobreescribe i como el resultado de i*i
     # Pinta el resultado sobre la consola
     # Guardar resultado
}

#----------------------#
## Estructura de un bucle (repeat)
repeat{
       m = rnorm(n=1 , mean=10 , sd=2) # generar un número aleatorio (media 10 , sd 2) 
       print(m) # pintar el número sobre la consola
       if (m <= 8){ # condicionar a que ese número sea menor o igual a 8
           print("Este numero es menor a 8") # detener el loop si m es menor o igual a 8 
       next
         } 
}
cat("Hacer ejemplo en clase")

#----------------------#
## Estructura de un bucle (while)
j = 1
while (j <=5) { # condición
       print(j*j) # pintar sobre la consola el producto de j*j
       j = j+1 # sobreescribir j como j + 1
}

#----------------------#
## Veamos un ejemplo

#### generate data
df = tibble(cod_mpio = c(5001,5002,5003,5004,5005,5006),	
            violencia_2014	= c(0.05,0.07,0.06,0.03,0.04,0.03),
            violencia_2015	= c(0.09,0.05,0.03,0.06,0.03,0.01),
            violencia_2016	= c(0.02,0.04,0.03,0.02,0.03,0.00),
            violencia_2017	= c(0.03,0.06,0.03,0.01,0.04,0.01),
            violencia_2018	= c(0.01,0.02,0.04,0.05,0.07,0.01),
            violencia_2019  = c(0.01,0.02,0.02,0.03,0.03,0.01))

cat("Hacer ejemplo usando la posicion de la columna")


cat("Hacer ejemplo usando el vector de nombres")


#=============================#
#=== 2. Controles de flujo ===#         
#=============================#

#----------------------#
## if & else
cat("los controles de flujo regulan la ejecucion de los codigos dentro de los diferentes tipos de loops")
letters
for (letra in letters) {
  
     if (letra %in% c("a","e","i","o","u")){
         print(paste0(letra," - Es una vocal"))
     }
    
     else {
           print(paste0(letra," - NO es una vocal")) 
     } 
}

#----------------------#
## next & breack
cat("next es un condicional que le permite al loop saltar al siguiente elemento del loop")

for(i in 1:20) {
    if(i %% 2 == 0){ next } # se salta a la siguiente linea
    print(i)
}

#==========================#
#=== 3. Aplicación CHIP ===#         
#==========================#
cat("Hacer en clase")

#----------------------#
## 1. Lista de archivos 
rutas = list.files("input/chip",full.names = T , recursive = T)

#----------------------#
## 2. Hacer ejemplo para una observación

## 2.1. Leer archivo

## 2.2. Obtener codigo-DANE 

## 2.3. Obtener tipo de inversion

## 2.4. Obtener valor

## 2.5. Exportar resultados

#----------------------#
## 3. Generalizar loop







