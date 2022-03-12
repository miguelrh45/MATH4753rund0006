#' myddt
#'
#' @param df dataset
#' @param SPECIES variable in dataset
#'
#' @return filtered data
#' @importFrom dplyr '%>%' filter
#' @export
#'
#' @examples \dontrun{myddt(df,SPECIES)}
myddt <- function(df,SPECIES){

WEIGHT <-  LENGTH <- RIVER <- NULL

df %>% dplyr::filter(SPECIES=={{SPECIES}}) # Note the use of {{}}
}







