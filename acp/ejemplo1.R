# Directorio de trabajo
ruta = "C:/Users/Pablo/Desktop/yazzz/acp/datos.csv"
# leemos los datos
df <- read.csv("datos.csv")
df
cor(df)
#cargamos la libreria
library(acp)
cps <- acp(X = df)
cpf0 <- cpFinales(acp = cps, no_comps = 2)
graficaCP(cpf0)

## ejemplo 2
ruta = "C:/Users/Pablo/Desktop/yazzz/acp/calificaciones.csv"
cal <- read.csv("calificaciones.csv")[,-1]
pairs(cal)
cor(cal)

p1 <- acp(X = cal)
cpf <- cpFinales(acp = p1, no_comps = 2)
graficaCP(cpf)

## ejemplo 3
# directorio de trabajo
ruta = "C:/Users/Pablo/Desktop/yazzz/acp/lecheros.csv"
#leemos los datos
df <- read.csv("lecheros.csv")[,-1]
# imprimimos los datos
df
cor(df)
#cargamos la libreria
library(acp)
##llamamos a nuestra funcion y sustituimos para sacar los componentes principales y el porcentaje
cps <- acp(X = df)
cps
##llamamos a nuestra segunda función y sustituimos, estos serian los componentes principales con los que trabajaran
cpf0 <- cpFinales(acp = cps, no_comps =3)
cpf0
##llamamos a nuestra funcion y sustituimos para graficar los dos priemros componene
graficaCP(cpf0)


