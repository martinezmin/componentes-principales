# X: debe ser una matriz de datos
# porcVarDes = Porcentaje de varianza deseado
acp <- function(X){

  # estandarizar las variables
  Z <- scale(X)

  # Matrix de correlacion
  S <- cor(Z)

  # Descomposición eigen-valor - eigenvector
  EV <- eigen(S)

  # Componentes principales
  CP <- Z %*%  EV$vectors

  # Porcentaje de varianza de cada componente
  varianzaTotal <- sum(EV$values)
  porcVar <- EV$values / varianzaTotal*100
  porcVarAcum <- cumsum(porcVar)

  # Devolvemos los CP y los % de varianza de varianza explicados acumulados
  salida <- list(CP = CP, pvar_acum = porcVarAcum)

  return(salida)

}

## Función que realiza un subset de los componentes a utilizar
cpFinales <- function(acp, no_comps){
  CPf <- acp$CP[,1:no_comps]
  return(CPf)
}


## Función que grafica los dos primeros cp
graficaCP <- function(cpf){
  g <- plot(cpf[,1], cpf[,2], type = "p", col = "blue",
            pch = 19, cex = 3,
            main = "Gráfica de los dos primeros CP",
            xlab = "Primer componente",
            ylab = "Segundo componente")
  return(print(g))
}

