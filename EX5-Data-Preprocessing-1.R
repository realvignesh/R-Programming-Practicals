library(zoo)

# Create a synthetic dataset with missing values
data <- data.frame(
  ID = 1:10,
  Age = c(25, 28, NA, 32, 30, 35, NA, 40, 42, 45),
  Height = c(170, NA, 165, 178, 175, NA, 180, NA, 185, 190),
  Weight = c(70, 75, 68, NA, 85, 90, 78, 88, NA, 92)
)

cat("Original Dataset:\n")
print(data)

cat("\nData Preprocessing:\n")

# 1. Removing Rows with Missing Values
cat("1. Removing Rows with Missing Values:\n")
cleaned_data_1 <- na.omit(data)
print(cleaned_data_1)
cat("\n")

# 2. Filling Missing Values with a Specific Value (e.g., 0)
cat("2. Filling Missing Values with 0:\n")
cleaned_data_2 <- data
cleaned_data_2[is.na(cleaned_data_2)] <- 0
print(cleaned_data_2)
cat("\n")

# 3. Filling Missing Values with Mean of the Column
cat("3. Filling Missing Values with Mean of the Column:\n")
cleaned_data_3 <- data

# Loop through each column
for (col in colnames(cleaned_data_3)) {
  # Find the mean of the column, excluding missing values
  col_mean <- mean(cleaned_data_3[, col], na.rm = TRUE)
  
  # Identify missing values in the column and replace them with the mean
  missing_values <- is.na(cleaned_data_3[, col])
  cleaned_data_3[missing_values, col] <- col_mean
}

print(cleaned_data_3)
cat("\n")

# 4. Interpolation (Linear)
cat("4. Interpolation (Linear):\n")
cleaned_data_4 <- na.approx(data)
print(cleaned_data_4)
cat("\n")
