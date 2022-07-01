#' %contains% Operator
#'
#' An operator that matches the patterns on a vector of strings.
#'
#'
#' @author Alejandro Abraham <a.abraham@innovationteam.eu>
#'
#' @export


# like %in%, but greps for all the patterns (rhs) within the strings (lhs)

`%contain%` <- function(strings, matchVec) {

  Reduce(
     `|`,
     lapply(matchvec, function(m) {

        grepl(m,strings)

    })

   )
}
