#' Keep Columns
#'
#' A function that emulates dplyr's .contains helper function combined with select, to subset columns combining a list and a pattern.
#'
#' @param DT a data.table to obtain column names from.
#' @param pattern a string containing the patterns to look for in the column names
#'
#' @author Alejandro Abraham <a.abraham@innovationteam.eu>
#' @import data.table
#' @return a vector to be plugged into a data.table (DT[, ..keeped]) for subsetting.
#'
#' @export

# keep columns with pattern and other

keep_cols <- function(DT, pattern, ...) {

    keeped <- unlist(c(list(...), grep(as.character(pattern), names(DT), value = TRUE)), recursive = TRUE, use.names = TRUE)
    keeped
}
