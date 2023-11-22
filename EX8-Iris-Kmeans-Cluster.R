# K-Means Clustering on Iris Dataset

# Load the Iris dataset
data(iris)

# Selecting columns for clustering (excluding species column)
iris_features <- iris[, 1:4]

# Prompt the user for the number of clusters
k <- 3

# Perform K-Means clustering
kmeans_model <- kmeans(iris_features, centers = k)

# Print the cluster centers
cat("\nCluster Centers:\n")
print(kmeans_model$centers)

# Add cluster assignments to the original dataset
iris_clustered <- cbind(iris, Cluster = kmeans_model$cluster)

# Visualize the clusters
library(ggplot2)

# Scatter plot of Sepal Length vs Sepal Width with colors representing clusters
cluster_plot = ggplot(iris_clustered, aes(x = Sepal.Length, y = Sepal.Width, color = factor(Cluster))) +
  geom_point(size = 3) +
  ggtitle("K-Means Clustering of Iris Dataset") +
  xlab("Sepal Length") +
  ylab("Sepal Width") +
  theme_minimal()

print(cluster_plot)
