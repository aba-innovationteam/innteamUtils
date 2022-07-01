#' Innovation Team Plotly Theme
#'
#' @param plot plotly plot
#' @param plot_title plot margin
#' @param plot_subtitle plot background
#' @param plot_caption font color
#' @param plot_xaxis font color
#' @param plot_yaxis font color
#' @export
#' @examples
#'df <- data.table(State = state.name,
#'                 LifeExp = state.x77[,4],
#'                 Population = state.x77[,1])
#'
#'df %>%
#'  plot_ly(x = ~LifeExp, y = ~Population, type = "scatter", width = 900, height = 500) %>%
#'    plotly_innteam(plot_title = 'This is my title',
#'                   plot_subtitle = 'Here we will see a subtitle',
#'                   plot_caption = 'Source: innteamUtils package',
#'                   plot_xaxis = 'LifeExp',
#'                   plot_yaxis = 'Population')
#'   )
plotly_innteam <- function(plot, ..., plot_title = "Insert Plot's Title", plot_subtitle = "", plot_caption = "", plot_xaxis = "", plot_yaxis = "") {
  plot %>%
    plotly::layout(
        title = list(text = paste0(plot_title,
                                    '<br>',
                                    '<sup>',
                                    plot_subtitle,
                                    '</sup>'),
                      x = 0.07, y = 0.92, xref = 'container'),
         plot_bgcolor = '#f6f6f6',
         paper_bgcolor = '#f6f6f6',
         legend = list(font = list(size = 13)),
         font = list(family = "Open Sans", size = 15, color = '#225E64'),
         margin = list(t = 75, b = 100),
         xaxis = list(title = list(text = plot_xaxis,
                                   font = list(size = 13)),
                      tickfont = list(family = "Open Sans", size = 13, color = '#225E64'),
                      zeroline = F),
         yaxis = list(title = list(text = plot_yaxis,
                                   font = list(size = 13)),
                      tickfont = list(family = "Open Sans", size = 13, color = '#225E64'),
                      zeroline = F),
         annotations =
           list(x = 1, y = -0.25,
                text = plot_caption,
                showarrow = F, xref = 'paper', yref = 'paper',
                xanchor = 'right', yanchor = 'auto',
                font = list(family = "Open Sans", size = 13, color = '#225E64')),
        width = 900, height = 500
         ) %>%
    plotly::layout(...)
}
