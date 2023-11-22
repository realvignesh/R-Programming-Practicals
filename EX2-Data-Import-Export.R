library(tidyverse)
library(xlsx)

# Import data from CSV file
df1 <- read_csv("Assets\\EX2-Import.csv")
summary(df1)
cat("\n")

# Import data from Excel file
df2 <- read.xlsx("Assets\\EX2-Import.xlsx", sheetIndex = 1)
summary(df2)
cat("\n")

# Import data from TXT file
df3 <- read.table("Assets\\EX2-Import.txt", sep = ",", header = TRUE)
summary(df3)
cat("\n")

# Export data to CSV file
write_csv(df1, "Assets\\EX2-Export.csv")

# Export data to Excel file
write.xlsx(df2, "Assets\\EX2-Export.xlsx", row.names = FALSE)

# Export data to TXT file
write.table(df3, "Assets\\EX2-Export.txt", sep = ",", row.names = FALSE)
