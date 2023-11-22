while (TRUE) {
  cat("MENU - NUMERICAL OPERATIONS\n")
  cat("1. Find Maximum\n")
  cat("2. Find Minimum\n")
  cat("3. Calculate Average\n")
  cat("4. Calculate Sum\n")
  cat("5. Calculate Square Root\n")
  cat("6. Round Numbers\n")
  cat("7. Exit\n")
  
  choice <- as.integer(readline(prompt = "Enter your choice (1/2/3/4/5/6/7): "))
  
  if (!(choice %in% c(1:7))) {
    cat("Invalid choice. Please enter 1, 2, 3, 4, 5, 6, or 7.\n\n")
    next
  } else if (choice %in% c(1:6)) {
    input <- readline(prompt = "Enter a list of numbers separated by commas: ")
    input_vector <- as.numeric(unlist(strsplit(input, ",")))
  }
  
  switch(choice,
         
         "1" = {cat("Maximum:", max(input_vector), "\n\n")},
         
         "2" = {cat("Minimum:", min(input_vector), "\n\n")},
         
         "3" = {cat("Average:", mean(input_vector), "\n\n")},
         
         "4" = {cat("Sum:", sum(input_vector), "\n\n")},
         
         "5" = {cat("Square root of values:", sqrt(input_vector), "\n\n")},
         
         "6" = {cat("Rounded values:", round(input_vector), "\n\n")},
         
         "7" = {
           cat("Exiting the program.\n\n")
           break
         }
  )
}
