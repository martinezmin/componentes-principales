#'es una lista de los componentes pricncipales que se desean ocupar
#'@param acp (aplicacion de componentes principales ) contiene todos los componentes principales que ya se calculo
#'@param no_comps aqui ponemos con cuantos componentes principales se decea trabajar
#' @return Devuelve una lista con los componentes principales y el porciento por componente.
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
#'##llamamos a nuestra segunda función y sustituimos, estos serian los componentes principales con los que trabajaran
#'cpf0 <- cpFinales(acp = cps, no_comps =3)
#'cpf0
#'
#'}
cpFinales <- function(acp, no_comps){
  CPf <- acp$CP[,1:no_comps]
  return(CPf)
}
