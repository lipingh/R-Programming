complete <- function (directory, id = 1: 332) {
  file_name <- c()
  number_cases <- c()
  for (i in id) {
    file_path <- paste(getwd(), "/", directory, "/", sprintf("%03d", i), ".csv", sep = "")
    data <- read.csv(file_path)
    file_name <- c(file_name, i)
    number_cases <- c(number_cases, sum(complete.cases(data)))
  }
  data.frame(id = file_name, nobs = number_cases)
}
