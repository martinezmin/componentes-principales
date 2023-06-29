#' aplicacion de los componentes primcipales
#'
#' Obtiene los componentes principales dependiendo variables del numero de variables que se tenga en los datos.
#'
#' @param X (dataframe o matriz) que contenga en las columnas el número de variables a analizar.
#' @return Devuelve una lista con los componentes principales y el porcentaje de varianza explicada por componente y el acumulado.
#' @export
#'
#' @examples
#' \dontrun{
#'# directorio de trabajo
#' ruta = "C:/Users/Pablo/Desktop/yazzz/acp/lecheros.csv"
#'#leemos los datos
#'df <- read.csv("lecheros.csv")[,-1]
#'# imprimimos los datos
#'df
#'cor(df)
#'#cargamos la libreria
#'library(acp)
#'##llamamos a nuestra funcion y sustituimos para sacar los componentes principales y el porcentaje
#'cps <- acp(X = df)
#'cps
#'}
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
  salida <- list(CP = CP, pvar = porcVar , pvar_acum = porcVarAcum)

  return(salida)

}
