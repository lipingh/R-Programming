pollutantmean <- function(directory, pollutant, id = 1: 332) {
      means <- c() # a vector of pollutant data accross the directory
      for (i in id) {
        file_path <- paste(getwd(), "/", directory, "/", sprintf("%03d", i), ".csv", sep = "")
        data <- read.csv(file_path)
        pollutant_data <- data[pollutant]
        means <- c(means, pollutant_data[!is.na(pollutant_data)])
      }
      mean(means)
}
