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

### Criterio de Wald o pesimísta
## Favorable
WaldF=criterio.Wald(tabla1,T)

cat("La alternativa óptima por el criterio ",WaldF$criterio, " en el caso de ", 
    ifelse(WaldF$metodo=="favorable","beneficios","costes"),
    " es la ",names(WaldF$AlternativaOptima),
    " con un valor óptimo de ", WaldF$ValorOptimo, sep = "" )
## Desfavorable
WaldD=criterio.Wald(tabla1,F)
cat("La alternativa óptima por el criterio ",WaldD$criterio, " en el caso de ",
    ifelse(WaldD$metodo=="favorable","beneficios","costes"),
    " es la ",names(WaldD$AlternativaOptima),
    " con un valor óptimo de ", WaldD$ValorOptimo, sep = "" )

### Criterio optimista
## Favorable
OptimistaF=criterio.Optimista(tabla1,T)
cat("La alternativa óptima por el criterio ",OptimistaF$criterio, " en el caso de ",
    ifelse(OptimistaF$metodo=="favorable","beneficios","costes"),
    " es la ",names(OptimistaF$AlternativaOptima),
    " con un valor óptimo de ", OptimistaF$ValorOptimo, sep = "" )
## Desfavorable
OptimistaD=criterio.Optimista(tabla1,F)
cat("La alternativa óptima por el criterio ",OptimistaD$criterio, " en el caso de ",
    ifelse(OptimistaD$metodo=="favorable","beneficios","costes"),
    " es la ",names(OptimistaD$AlternativaOptima),
    " con un valor óptimo de ", OptimistaD$ValorOptimo, sep = "" )

