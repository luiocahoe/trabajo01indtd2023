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

### Criterio Hurwicz
## Favorable
HurwiczF=criterio.Hurwicz(tabla1,T)
cat("La alternativa óptima por el criterio ",HurwiczF$criterio, " en el caso de ",
    ifelse(HurwiczF$metodo=="favorable","beneficios","costes"),
    " es la ",names(HurwiczF$AlternativaOptima),
    " con un valor óptimo de ", HurwiczF$ValorOptimo, sep = "" )
## Desfavorable
HurwiczD=criterio.Hurwicz(tabla1,F)
cat("La alternativa óptima por el criterio ",HurwiczD$criterio, " en el caso de ",
    ifelse(HurwiczD$metodo=="favorable","beneficios","costes"),
    " es la ",names(HurwiczD$AlternativaOptima),
    " con un valor óptimo de ", HurwiczD$ValorOptimo, sep = "" )

### Criterio de Savage o costes de oportunidad
## Favorable
SavageF=criterio.Savage(tabla1,T)
cat("La alternativa óptima por el criterio ",SavageF$criterio, " en el caso de ",
    ifelse(SavageF$metodo=="favorable","beneficios","costes"),
    " es la ",names(SavageF$AlternativaOptima),
    " con un valor óptimo de ", SavageF$ValorOptimo, sep = "" )
## Desfavorable
SavageD=criterio.Savage(tabla1,F)
cat("La alternativa óptima por el criterio ",SavageD$criterio, " en el caso de ",
    ifelse(SavageD$metodo=="favorable","beneficios","costes"),
    " es la ",names(SavageD$AlternativaOptima),
    " con un valor óptimo de ", SavageD$ValorOptimo, sep = "" )

