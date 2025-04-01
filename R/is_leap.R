#' Is this a leap year?
#' 
#' @param num a number or string that contains a number
#' 
#' @return TRUE if num is a leap year by given conditions, FALSE otherwise
#' 
#' @export
#' 
#' @examples
#' is_leap(2000) # returns TRUE
#' is_leap(1800) # returns FALSE
#' is_leap("The year is 2000 CE") # returns TRUE
#' \dontrun{
#'   is_leap(mtcars)
#' }
#' 
is_leap <- function(num) {
  if (is.character(num)) {
    num <- stringr::str_extract(num, "\\d+") # Return digits only
    num <- as.numeric(num)
  }
  return(!is.na(num) && ((num %% 4 == 0 && num %% 100 != 0) || num %% 400 == 0))
}

# rm(list = ls()) # removes things from env, but not detach libraries; to be removed after testings