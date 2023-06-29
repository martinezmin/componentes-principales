#'el grafico de los primeros componentes principales
#' @param cpf (componentes principales finales) contiene los componentes principales finales que se trabajara
#' @return Devuelve una grafica de los dos componentes principales el 1 y 2
#' @export
#'
#' @examples
#' \dontrun{
#'# directorio de trabajo
#'ruta = "C:/Users/Pablo/Desktop/yazzz/acp/lecheros.csv"
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
#'##llamamos a nuestra funcion y sustituimos para graficar los dos priemros componene
#'graficaCP(cpf0))
#'}
graficaCP <- function(cpf){
  g <- plot(cpf[,1], cpf[,2], type = "p", col = "blue",
            pch = 19, cex = 3,
            main = "Gráfica de los dos primeros CP",
            xlab = "Primer componente",
            ylab = "Segundo componente")
  return(print(g))
}

