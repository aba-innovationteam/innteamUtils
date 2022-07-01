#' Round Value
#'
#' It rounds bigger than 1 values, like to the closest 5, 10, 1000, etc
#'
#' @param x is a numeric vector or variable.
#' @param roundTo a numeric value indicating the closest number to round to.
#' @param dir a character value indicating wheter to round "up" or "down"
#'
#' @author Alejandro Abraham <a.abraham@innovationteam.eu>
#'
#'
#' @return an equal length vector.
#' @export

rounder <- function(x, roundTo, dir = 'up') {

  if(dir == 1) {  ##ROUND UP

    x + (roundTo - x %% roundTo)

  } else {

    if(dir == 'down') {  ##ROUND DOWN

        x - (x %% roundTo)

        }

      }
}
