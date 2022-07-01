#' Export PNG with Logo banner
#'
#' Contains the parameters and colour for a standarized plot theme.
#'
#' @param path_destination relative PATH where to save the plot
#' @param widthIT PNG width
#' @param heightIT PNG Height image
#' @param dpiIT PNG print quality
#'
#' @author Alejandro Abraham <a.abraham@innovationteam.eu>
#'
#' @return A print/publication-ready PNG file with logo banner
#'
#' @export
#'
export_png <- function(path_destination = NULL, widthIT = 10, heightIT = 6, dpiIT = 320) {

if (!is.null(path_destination)) {
      path_img = here::here(paste0(paste0(as.character(path_destination), sep = '/'), last_plot()$labels$title, ".png"))
} else {
      path_img = here::here(paste0(last_plot()$labels$title, ".png"))
    }


ggsave(filename = path_img,
          width = widthIT,
          height = heightIT,
          dpi = dpiIT)


plot <- image_read(path_img)
logo_raw <- image_read(pkg_resource("img/banner_plot.png"))


logo <- logo_raw %>%
  image_scale("1000")


final_plot <- image_append(image_scale(c(plot, logo), "1000"), stack = TRUE)


image_write(final_plot, path_img)

cat('File saved on:', path_img)

}

