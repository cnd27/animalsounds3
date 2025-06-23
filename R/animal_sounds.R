#' Print the sounds animals make
#'
#' Print the sound that an animal makes in the console.
#'
#' Is a wrapper to [paste0()]. This is a *silly* function in a **toy package**.
#'
#' @param animal A string - the name of the animal
#' @param sound A string - the name of the sound
#'
#' @returns A string - 'The \{animal\} says \{sound\}!'
#' @export
#'
#' @examples animal_sounds('dog','woof')
animal_sounds <- function(animal, sound) {
  if (!rlang::is_character(animal, n = 1)) {
    cli::cli_abort(
      c("{.var animal} must be a single string!",
        "i" = "It was {.type {animal}} of length {length(animal)} instead.",
        "i" = "You typed {animal}."),
      class = "error_not_single_string"
    )
  }

  if (!rlang::is_character(sound, n = 1)) {
    cli::cli_abort(
      c("{.var sound} must be a single string!",
        "i" = "It was {.type {sound}} of length {length(sound)} instead.",
        "i" = "You typed {sound}."),
      class = "error_not_single_string"
    )
  }
  paste0("The ", animal, " says ", sound, "!")
}
