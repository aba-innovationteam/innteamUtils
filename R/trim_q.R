
#' Trim Variable
#'
#' It allows to cut tails simultaneously or single-sided (lower bound, upper bound). Quantiles range from 0 to 1.
#'
#' @param x is a numeric vector or variable.
#' @param lowbound lower bound percentile (in decimals).
#' @param upbound upper bound percentile (in decimals).
#'
#' @author Alejandro Abraham <a.abraham@innovationteam.eu>
#' @import data.table
#' @importFrom  stats quantile
#'
#'
#' @return a shorter or equal length vector.
#' @export

trim_q = function(x, lowbound = 0, upbound = 1) {

  x[(x > stats::quantile(x, lowbound)) & (x < stats::quantile(x, upbound))]

}
