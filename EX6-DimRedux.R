library(MASS)
data("Boston")

# Standardize the data
standardized_data <- scale(Boston)

# Calculate the covariance matrix
cov_matrix <- cov(standardized_data)

# Calculate eigenvalues and eigenvectors
eigen_result <- eigen(cov_matrix)
eigenvalues <- eigen_result$values
eigenvectors <- eigen_result$vectors

# Set the number of components to retain (e.g., 2 for visualization)
num_components <- 2

# Project data onto the selected principal components
reduced_data <- standardized_data %*% eigenvectors[, 1:num_components]

# Calculate explained variance
explained_variance <- sum(eigenvalues[1:num_components]) / sum(eigenvalues)

# Print explained variance
cat("Explained Variance:", explained_variance, "\n")

# Create a 2x2 grid of plots
par(mfrow = c(2, 2))

# Plot 1: Scatterplot of PC1 vs. PC2
plot(reduced_data[, 1], reduced_data[, 2], xlab = "PC1", ylab = "PC2", 
     main = "PCA Reduced Data (2D)", col = "blue")

# Plot 2: Explained Variance Bar Plot
barplot(eigenvalues[1:num_components] / sum(eigenvalues), 
        names.arg = 1:num_components, 
        xlab = "Principal Component", ylab = "Explained Variance",
        main = "Explained Variance by Principal Component", col = "lightblue")
