Replace Missing Values with Column Medians
Package: MasturinaPackage
Title: Replace Missing Values
Version: 0.0.0.9000
Description: This package provides a simple function to replace missing value(NA)
             in numeric columns with the median of respective column.
License: MIT
Encoding: UTF-8
Roxygen: list(markdown = TRUE)
RoxygenNote: 7.3.2

# Example data frame
df <- data.frame(a = c(10, 20, NA, 40),
                 b = c(NA, 50, 60, 70),
                 c = c(50, 60, NA, 80)
                 )
new_data(df)
