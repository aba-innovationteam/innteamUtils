#' Numeric Summaries
#'
#' Summarises numeric data and returns a data frame containing the minimum value, median, standard deviation, and maximum value.
#'
#' @param x a numeric vector containing the values to summarize.
#' @param na.rm A logical indicating whether missing values should be removed
#'
#' @author Alejandro Abraham <a.abraham@innovationteam.eu>
#'
#' @importFrom data.table data.table
#'
#' @return a 1 x 4 data.table with summary statistics \code{data.table} including columns:
#' \itemize{
#'  \item min
#'  \item median
#'  \item sd
#'  \item max
#' }
#' @export
#'
numeric_summary = function(x, na.rm){

    if(!is.numeric(x)){

        stop("data must be numeric")

    }

    data.table::data.table(min = min(x, na.rm = na.rm),
                           median = median(x, na.rm = na.rm),
                           sd = sd(x, na.rm = na.rm),
                           max = max(x, na.rm = na.rm)
                           )
}
