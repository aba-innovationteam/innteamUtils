#' Contain Operator
#'
#'  like %in%, but greps for all the patterns (rhs) within the strings (lhs)
#'
#' @param strings is a vector of character strings.
#' @param matchVec a vector with patterns to be matched in the vector strings
#'
#' @author Alejandro Abraham <a.abraham@innovationteam.eu>
#'
#'
#' @return an equal length vector.
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
