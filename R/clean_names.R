#' Clean Names
#'
#' Snames case colnames.
#'
#' @param dat is a data.table.
#' @param ... other arguments coming from the janitor packages.
#'
#' @author Alejandro Abraham <a.abraham@innovationteam.eu>
#' @importFrom janitor clean_names
#'
#'
#' @return data.table .
#' @export

clean_names = function(dat, ...) {

  dat = janitor::clean_names(dat, ...)

  return(dat)

}
