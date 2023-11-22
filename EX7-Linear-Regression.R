# Simple Linear Regression with User Input

# Prompt the user for input
cat("Enter the number of data points: ")
num_points <- as.numeric(readline())

# Initialize vectors to store input data
x <- numeric(num_points)
y <- numeric(num_points)

# Get input data from the user
for (i in 1:num_points) {
  cat("Enter x value for data point ", i, ": ")
  x[i] <- as.numeric(readline())
  
  cat("Enter y value for data point ", i, ": ")
  y[i] <- as.numeric(readline())
}

# Perform simple linear regression
model <- lm(y ~ x)

# Get slope and intercept from the model
slope <- coef(model)[2]
intercept <- coef(model)[1]

# Print slope and intercept
cat("\nSlope: ", slope, "\n")
cat("Intercept: ", intercept, "\n")

# Plot the data points and the regression line
plot(x, y, main="Simple Linear Regression", xlab="X", ylab="Y", pch=16, col="blue")
abline(model, col="red")

# Add the regression line equation to the plot
equation <- paste("y =", round(intercept, 2), "+", round(slope, 2), "x")
text(max(x), max(y), equation, pos=4, col="green")
