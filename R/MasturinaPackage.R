#' Replace Missing Values with Column Medians
#'
#' This function replaces missing values (NA) in numeric columns of a data frame
#' with the median of the respective column.
#'
#' @param data A data frame. Numeric columns are analyzed for missing values.
#' @return A data frame where NA values in numeric columns are replaced with the column medians.
#' @examples
#' # Example data frame
#' df <- data.frame(a = c(10, 20, NA, 40),
#'                  b = c(NA, 50, 60, 70),
#'                  c = c(50, 60, NA, 80)
#'                  )
#' new_data(df)
#' @export
new_data <- function(data)
{
  result <- data
  for(i in names(data))
  {
    if(is.numeric(data[[i]]))
    {
      medians <- median(data[[i]],na.rm=T)
      result[[i]] <- ifelse(is.na(data[[i]]),medians,data[[i]])
    }
  }
  return(result)
}



