
default_th <-

    bs_theme(

      version = 5,

        bootswatch = 'lux',

            primary = "#015958",
            secondary = '#8FBCBB',

            success = '#024959',
            warning = '#81A1C1',
            danger = '#BF616A',

      font_scale = 0.85

        )


### ggplot2 global theme
theme_set(theme_innteam())

### reactable global theme
options(reactable.theme = react_format)


header_tables = colDef(headerStyle = list(background = "#8FBCBB", borderColor = "#8FBCBB", color = '#042326', cursor = "pointer"),
                       format = colFormat(separator = FALSE, digits = 0),
                       align = "center")
