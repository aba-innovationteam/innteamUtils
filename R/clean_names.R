#' Clean Names
#'
#' Snames case colnames.
#'
#' @param dat is a data.table.
#'
#' @author Alejandro Abraham <a.abraham@innovationteam.eu>
#' @importFrom janitor clean_names
#'
#'
#' @return data.table .
#' @export

clean_names <- function(dat, ...) {

  dt = as.data.table(clean_names(dat, ...))

  return(dt)

}
