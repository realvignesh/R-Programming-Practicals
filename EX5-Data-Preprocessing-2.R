# Create a synthetic dataset
data <- data.frame(
  ID = 1:10,
  Age = c(25, 28, 32, 30, 35, 40, 42, 45, 50, 55),
  Height = c(150, 160, 170, 175, 180, 185, 190, 160, 170, 155),
  Weight = c(50, 55, 60, 65, 70, 75, 80, 85, 90, 95)
)

# Display the original dataset
cat("Original Dataset:\n")
print(data)

# Min-max normalization function
minmax_normalize <- function(x) {
  min_val <- min(x, na.rm = TRUE)
  max_val <- max(x, na.rm = TRUE)
  return((x - min_val) / (max_val - min_val))
}

# Normalize the numeric columns (Age, Height, Weight)
normalized_data <- data
numeric_columns <- c("Age", "Height", "Weight")
for (col in numeric_columns) {
  normalized_data[, col] <- minmax_normalize(data[, col])
}

# Display the normalized dataset
cat("\nMin-Max Normalized Dataset:\n")
print(normalized_data)
