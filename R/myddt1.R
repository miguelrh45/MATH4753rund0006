#' myddt1
#'
#' @param df data
#' @param x variable
#' @param y variable
#' @param SPECIES conditional variable
#' @param col color of river
#'
#' @return Plot of LENGTH vs WEIGHT
#' @importFrom ggplot2 aes geom_smooth ggplot ggtitle geom_point
#' @importFrom dplyr '%>%' filter
#' @export
#'
#' @examples \dontrun{myddt1(df=ddt, SPECIES="CCATFISH", x = "LENGTH", y= "WEIGHT", col = "RIVER")}


myddt1 <- function(df, x, y, SPECIES, col){
  WEIGHT <-  LENGTH <- RIVER <- NULL

  df %>% filter(SPECIES=={{SPECIES}}) # Note the use of {{}}
  g <- ggplot(df, aes_string(x=x,y=y)) + # Note the use of aes_string
    geom_point(aes_string(color = col )) +
    geom_smooth(formula = y~x +I(x^2), method = "lm") + ggtitle("Miguel Rundstrom-Holguin")
  print(g)
  head(myddt1)

}
