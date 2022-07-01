#' Innovation Team reactable Theme
#'
#' Contains the parameters and colour for a standarized table theme.
#'
#'
#' @author Alejandro Abraham <a.abraham@innovationteam.eu>
#'
#' @examples
#'library(innteamUtils)
#'reactable(iris, theme = react_format,
#'          highlight = TRUE, striped = TRUE, filterable = TRUE, resizable = TRUE, wrap = FALSE)
#'
#' @returns an object with lists to pass into the reactable function or options.
#' @export
#'
#' @importFrom reactable reactableTheme
#'
react_format = reactable::reactableTheme(

  color = "#363636",
  tableStyle = list(fontFamily = 'Open Sans', fontWeight = 400, fontSize = 13),
  headerStyle = list(fontFamily = "Open Sans", backgroundColor = "#225E64", color = 'white', fontWeight = 300, fontSize = 14),

  backgroundColor = "#ffffff",
  borderColor = "#dfe2e5",
  stripedColor = "#f6f6f6",
  highlightColor = "#DCE4F2",

  cellPadding = "8px 12px",
  style = list(fontFamily = 'Open Sans'),

  searchInputStyle = list(width = "100%"),

  pageButtonHoverStyle = list(backgroundColor = "#87A1B0", color = 'white'),
  pageButtonActiveStyle = list(backgroundColor = "#87A1B0", color = 'white'),

  selectStyle = list(backgroundColor = "#87A1B0", color = 'white')

)
