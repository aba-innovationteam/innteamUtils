#' Snake Case Variable (column) names
#'
#' It modifies all column names into snake_case for internal practices consistency
#'
#' @author Alejandro Abraham <a.abraham@innovationteam.eu>
#' @importFrom janitor clean_names
#'
#'
#' @return a data.table
#' @export

snake_names <- janitor::clean_names
