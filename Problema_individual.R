###############################################################################
# PRIMER TRABAJO TEORÍA DE LA DECISIÓN 
# Métodos de incertidumbre
# Luis Carlos Ocaña Hoeber                                           07/10/2023
###############################################################################

######### PRIMER PROBLEMA
rm(list=ls()) # Elimina todas las variables/objetos almacenados
source("teoriadecision_funciones_incertidumbre.R") # Lectura de las funciones 
# creadas por "calote" en GitHub.

#### PRIMER APARTADO. Tabla de decisión con valores inventados y resuelto con
# cada uno de los métodos o funciones individuales de Incertidumbre por
# separado (tanto en situación favorable como desfavorable).

set.seed(2601) # Semilla para reproductividad
datos1=runif(7*4) # Creación de datos aleatorios
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

### Criterio de La Place
## Favorable
LaPlaceF=criterio.Laplace(tabla1,T)
cat("La alternativa óptima por el criterio ",LaPlaceF$criterio, " en el caso de ",
    ifelse(LaPlaceF$metodo=="favorable","beneficios","costes"),
    " es la ",names(LaPlaceF$AlternativaOptima),
    " con un valor óptimo de ", LaPlaceF$ValorOptimo, sep = "" )
## Desfavorable
LaPlaceD=criterio.Laplace(tabla1,F)
cat("La alternativa óptima por el criterio ",LaPlaceD$criterio, " en el caso de ",
    ifelse(LaPlaceD$metodo=="favorable","beneficios","costes"),
    " es la ",names(LaPlaceD$AlternativaOptima),
    " con un valor óptimo de ", LaPlaceD$ValorOptimo, sep = "" )

### Criterio de punto ideal
## Favorable
PuntoIdealF=criterio.PuntoIdeal(tabla1,T)
cat("La alternativa óptima por el criterio ",PuntoIdealF$criterio, " en el caso de ",
    ifelse(PuntoIdealF$metodo=="favorable","beneficios","costes"),
    " es la ",names(PuntoIdealF$AlternativaOptima),
    " con un valor óptimo de ", PuntoIdealF$ValorOptimo, sep = "" )
## Desfavorable
PuntoIdealD=criterio.PuntoIdeal(tabla1,F)
cat("La alternativa óptima por el criterio ",PuntoIdealD$criterio, " en el caso de ",
    ifelse(PuntoIdealD$metodo=="favorable","beneficios","costes"),
    " es la ",names(PuntoIdealD$AlternativaOptima),
    " con un valor óptimo de ", PuntoIdealD$ValorOptimo, sep = "" )

######### SEGUNDO PROBLEMA
# Crear un enunciado que se refiera a una situación real y resolverlo con la
# función R que devuelve la resolución de todos los métodos en una única tabla.
# Luis se va de vacaciones de Mykonos y quiere alquilar un coche durante un día
# para recorrerse la isla. Estaba pensando alquilar un coche pequeño, como un
# fiat 500, encontrando las siguientes 3 empresas con este tipo de vehículos:
# Avis, que por 1 día le cobra 50€, Europcar por 65€ y Cicar por 80€.
# Todas las empresas tienen una política de seguros muy diferentes.
# En Avis no incluye ningún seguro ni asistencia en carretera, cobrándole 25€ si
# pincha una rueda, 60€ si rompe la luna del coche y 350€ en caso de que el coche
# quede siniestro. En Europcar tiene un seguro básico, que cubre una parte de los
# daños; si se le pincha la rueda del coche le cobran 15€, 25€ si se le rompe la
# luna del coche y 185€ en caso de siniestro. En cambio, en Cicar cuenta con un
# seguro a todo riesgo sin franquicia.
# ¿Qué empresa debería escoger Luis si quiere ahorrarse el máximo dinero
# posible/piensa que todo le va a ir bien?
# ¿Y si fuera al revés y tuviera siempre "mala suerte"?

tabla2=crea.tablaX(c(50,75,110,400,
                     65,80,90,250,
                     80,80,80,80))
criterio.Todos(tabla2,0.5,F)

# Deberá escoger la empresa Avis, ya que su planteamiento se corresponde
# con el criterio optimista.
# En el segundo caso debería escoger Cicar, ya que ese planteamiento
# corresponde al criterio de Wald o pesimista.