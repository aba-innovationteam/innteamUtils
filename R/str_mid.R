#' Excel's MID
#'
#' A function that emulates Excel's string functions LEFT(), MID() and RIGHT().
#'
#' @param string string or vector containig strings to parse.
#' @param n number of characters to extract.
#' @param i character number from which to start counting.
#' @param e character number where to stop counting.
#' @author Alejandro Abraham <a.abraham@innovationteam.eu>
#'
#'
#' @return a vector with the remaining characters from the original strings
#' @export
#'
# This extract characters from the middle

str_mid <- function(string, i = 2, e = 5){

  substr(string, i, e)
}
