#' Years Difference
#'
#' Calculates the times passed between dates, e.g. how many years occured between 2020 and 2021 = 1.
#'
#' @param DT a data.table to obtain column names from.
#'
#' @author Alejandro Abraham <a.abraham@innovationteam.eu>
#' @import data.table
#'
#'
#' @return a one row data.table keeping original names.
#' @export

diff_years <- function(base_date, tap_date) {

    lubridate::interval(base_date, tap_date) / lubridate::years(1)
}
