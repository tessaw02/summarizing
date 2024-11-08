#' Generate a summary report for numeric variables
#' @description Given a data frame, 'data_summary()' summarizes all numerical values in the data set and returns a list.
#' The function summarizes the mean, median, standard deviation and interquartile range for all columns containing numeric data.
#' @details The 'data_summary' function provides a summary report for a dataset generating summary statistics (mean, median, standard deviation and interquartile range) for numerical variables.
#'
#' @param data This argument represents the data frame containing the dataset to be summarized, which must contain at least one numeric column; or, the function will throw an error.
#'
#' @return The function returns a list containing: the mean, median, standard deviation and interquartile range for the numerical variables
#' @importFrom dplyr select where summarise_all
#' @importFrom stats IQR median sd
#' @export
#' @examples
#' # example dataset
#' df <- data.frame(
#' category = c("A", "B", "C"),
#' value1 = c(10, 17, 28),
#' value2 = c(15, 12, 20))
#' data_summary(df)
data_summary <- function(data) {
  if(!any(sapply(data, is.numeric))){
    stop("Error: At least one column in the data must be numeric.")}
  data |>
    select(where(is.numeric)) |> #selects only numeric values
    summarise_all(list(mean = mean, median = median, sd = sd, IQR = IQR), na.rm = TRUE) #summarises from the selected numeric values in the dataset
}

