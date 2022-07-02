pkg_resource = function(...) {

  system.file("resources", ..., package = "innteamUtils", mustWork = TRUE)

}

pkg_font = function(...) {

  system.file("resources", ..., package = "innteamUtils", mustWork = TRUE)

}



pkg_shiny = function(...) {

  system.file("shinyfiles", ..., package = "innteamUtils", mustWork = TRUE)

}


shiny_sys <- function(
  ...,
  lib.loc = NULL,
  mustWork = FALSE
) {
  system.file(
    ...,
    package = "innteamUtils",
    lib.loc = lib.loc,
    mustWork = mustWork
  )
}
