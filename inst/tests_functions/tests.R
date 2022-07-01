
library(innteamUtils)

# ggplo2 Theme ----------------------------

mtcars |>
    ggplot(aes(x = mpg,
               y = cyl)) +
    geom_point() +
    labs(title = 'A title',
         subtitle = 'a subtitle') +
        theme_innteam()

# Plotly Theme ----------------------------

mtcars |>
    plot_ly(x = ~mpg,
            y = ~cyl,
            type = 'scatter') |>
    plotly_innteam(
        plot_title = "Insert Plot's Title",
         plot_subtitle = "a subs",
          plot_caption = "some caption",
          plot_xaxis = "x_1",
          plot_yaxis = "y_2")



# clean_names() ----------------------------

iris2 = clean_names(iris)


# %contain% ----------------------------

iris2_names = names(iris2)

iris2_names[iris2_names %contain% 'width']


# diff_years() ----------------------------

date1 = as.Date('1993-09-06')
date2 = Sys.Date()

diff_years(date1, date2)



# is.error() ----------------------------

is.error(log(3))
is.error(log(a))


# keep_cols() ----------------------------

keep = keep_cols(iris2, pattern = 'width')

iris2 |> setDT()
iris2[, ..keep]



# object_name() ----------------------------

object_name(iris2)


# rounder() ----------------------------

rounder(iris2$sepal_width, roundTo = 2, dir = 'up')


# trim_q() ----------------------------

trim_q(iris2$sepal_width, 0.10, 0.9)

