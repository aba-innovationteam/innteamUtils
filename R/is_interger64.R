#' Interger 64 Vectors
#'
#'
#'
#' is.interger64 is a more general test of an object being interpretable as integers 64 bit encoded
#'
#'
#'
#' @author Alejandro Abraham <a.abraham@innovationteam.eu>
#'
#' @param x object to be tested.
#'
#' @return a boolean vector type TRUE if interger64, FALSE otherwise.
#' @export
#'
is_integer64 <- function(x){
  class(x)=="integer64"
}
