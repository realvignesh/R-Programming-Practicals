# Load necessary libraries
library(class)
library(ggplot2)
library(caret)

# Load the dataset
cancer_data <- read.csv("Assets\\EX9-CancerData.csv")

# Display the structure of the dataset
# str(cancer_data)

# Split the dataset into training and testing sets
set.seed(123)
train_indices <- createDataPartition(cancer_data$diagnosis, p = 0.7, list = FALSE)
train_data <- cancer_data[train_indices, ]
test_data <- cancer_data[-train_indices, ]

# Train the KNN model
k_value <- 3
knn_model <- knn(train = train_data[, c('radius_mean', 'concavity_mean', 'symmetry_mean')],
                 test = test_data[, c('radius_mean', 'concavity_mean', 'symmetry_mean')],
                 cl = train_data$diagnosis, k = k_value)

# Evaluate the model
conf_matrix <- table(Actual = test_data$diagnosis, Predicted = knn_model)
accuracy <- sum(diag(conf_matrix)) / sum(conf_matrix)

cat("Confusion Matrix:\n")
print(conf_matrix)

cat("\nAccuracy:", round(accuracy, 2), "\n")

# Plot the results
class_plot = ggplot(test_data, aes(x = radius_mean, y = concavity_mean, color = diagnosis, shape = knn_model)) +
  geom_point(size = 3) +
  ggtitle("KNN Classification for Cancer Diagnosis") +
  xlab("Radius Mean") +
  ylab("Concavity Mean") +
  theme_minimal()

print(class_plot)
