corr <- function(directory, threshold = 0) {
  # Use complete function in part 2 to calulate number of complete cases
  df <- complete(directory)
  filtered_df <- subset(df, df$nobs > threshold)
  correlation <- c()
  for (i in filtered_df$id) {
    file_path <- paste(getwd(), "/", directory, "/", sprintf("%03d", i), ".csv", sep = "")
    data <- read.csv(file_path)
    #remove NA, otherwise the result will NA
    data <- subset(data, complete.cases(data))
    correlation <- c(correlation, cor(data$nitrate, data$sulfate))
  }
  correlation
}
