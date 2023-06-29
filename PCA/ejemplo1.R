# Directorio de trabajo
setwd("~/Desktop/PCA")

# leemos los datos
df <- read.csv("datos.csv")
pairs(df)
cor(df)


cps <- acp(X = df)
cpf0 <- cpFinales(acp = cps, no_comps = 2)
graficaCP(cpf0)

## ejemplo 2
cal <- read.csv("calificaciones.csv")[,-1]
pairs(cal)
cor(cal)

p1 <- acp(X = cal)
cpf <- cpFinales(acp = p1, no_comps = 3)
graficaCP(cpf)

