#' Get Object Name in character string
#'
#' Retrieves the object name in a string character.
#'
#' @param object R object.
#'
#' @author Alejandro Abraham <a.abraham@innovationteam.eu>
#'
#'
#' @return a character value or vector.
#' @export

object_name = function(object) {

        deparse(substitute(object))

}
