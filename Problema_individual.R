###############################################################################
# PRIMER TRABAJO TEORÍA DE LA DECISIÓN 
# Luis Carlos Ocaña Hoeber                                           07/10/2023
###############################################################################

rm(list=ls()) # Elimina todas las variables/objetos almacenados
source("teoriadecision_funciones_incertidumbre.R") # Lectura de las funciones 
# creadas por "calote" en GitHub.

#### PRIMER APARTADO. Tabla de decisión con valores inventados y resuelto con
# cada uno de los métodos o funciones individuales de Incertidumbre por
# separado (tanto en situación favorable como desfavorable)

set.seed(2601) # Semilla para reproductividad
datos1=runif(4*7) # Creación de datos aleatorios
datos1 # Visualización de datos
tabla1=crea.tablaX(datos1,7,4) # Creación de la tabla
tabla1 # Visualización de tabla
