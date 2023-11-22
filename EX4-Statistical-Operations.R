# Read input vector from the user
cat("Enter a vector of numbers separated by spaces (e.g., 1 2 3 4 5): ")
data_vector <- scan()

while (TRUE) {
  cat("Enter your choice:\n")
  cat("1. Calculate Mean\n")
  cat("2. Calculate Median\n")
  cat("3. Calculate Mode\n")
  cat("4. Calculate Standard Deviation\n")
  cat("5. Exit\n")
  
  choice <- as.integer(readline(prompt = "Enter your choice (1/2/3/4/5): "))
  
  if (choice == 5) {
    cat("Exiting the program.\n")
    break
  }
  
  switch(choice,
         "1" = {cat("Mean:", mean(data_vector), "\n")},
         
         "2" = {
           sort(data_vector)
           cat("Median:", median(data_vector), "\n")
         },
         
         "3" = {
           mode_value <- as.numeric(names(sort(table(data_vector), decreasing = TRUE)[1]))
           if (!is.na(mode_value)) {
             cat("Mode: ", mode_value, "\n")
           } else {
             cat("Mode: No unique mode exists.\n")
           }
         },
         
         "4" = {cat("Standard Deviation:", sd(data_vector), "\n")}
  )
}
