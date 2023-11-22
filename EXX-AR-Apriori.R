# Load necessary libraries
library(arules)
library(arulesViz)

# Load the "Groceries" dataset
data("Groceries")

# Set parameters for the Apriori algorithm
min_support <- 0.001
min_confidence <- 0.5

# Perform Apriori algorithm
rules <- apriori(Groceries, parameter = list(support = min_support, confidence = min_confidence))

# Sort rules by support and confidence
rules <- sort(rules, by = "support", decreasing = TRUE)
rules <- head(rules, 10)

# Display the mined top 10 rules
cat("Top 10 Association Rules:\n")
inspect(rules)

# Plotting the top 10 rules using a graph
cat("\nGraph and Scatterplot of Top 10 Association Rules:\n")
result_1 = plot(rules, method = "graph")
result_2 = plot(rules, method = "scatterplot")

print(result_1)
print(result_2)
