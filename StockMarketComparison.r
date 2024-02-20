# Install and load necessary packages
if (!requireNamespace("tidyverse", quietly = TRUE)) {
  install.packages("tidyverse")
}
library(tidyverse)

# Reads TSV file using readr and adds column names
file_path <- "/stats/Economic_Indicators.tsv"
data <- read_tsv(file_path, col_names = c("Years", "Economic Indicators"))

# Creates a line graph
ggplot(data, aes(x = x_column_name, y = y_column_name)) +
  geom_line() +
  labs(title = "Line Graph of Data",
       x = "X-axis Label",
       y = "Y-axis Label")
