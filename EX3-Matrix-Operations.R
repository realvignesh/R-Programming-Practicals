print("MATRIX OPERATIONS")
m1 <- matrix(0, nrow = 2, ncol = 2)
m2 <- matrix(0, nrow = 2, ncol = 2)
cat("\n")

for (i in 1:2) {
  for (j in 1:2) {
    cat("Enter matrix 1 [", i, ",", j, "]: \n")
    m1[i, j] = as.integer(readline())
  }
}
cat("\n")


for (k in 1:2) {
  for (l in 1:2) {
    cat("Enter matrix 2 [", k, ",", l, "]: \n")
    m2[k, l] = as.integer(readline())
  }
}
cat("\n")

add <- m1 + m2
sub <- m1 - m2
mul <- m1 %*% m2
div_m1 <- m1 / m2
div_m2 <- m2 / m1
trans_m1 <- t(m1)
trans_m2 <- t(m2)
inv_m1 <- solve(m1)
inv_m2 <- solve(m2)

while (TRUE) {
  cat("1. Addition (M1 + M2)\n")
  cat("2. Subtraction (M1 - M2)\n")
  cat("3. Multiplication (M1 * M2)\n")
  cat("4. Division (M1 / M2)\n")
  cat("5. Division (M2 / M1)\n")
  cat("6. Transpose M1\n")
  cat("7. Transpose M2\n")
  cat("8. Inverse M1\n")
  cat("9. Inverse M2\n")
  cat("10. Exit\n")
  
  ch <- as.integer(readline(prompt = "Enter Your Choice: "))
  switch(ch,
         "1" = {print(add)},
         "2" = {print(sub)},
         "3" = {print(mul)},
         "4" = {print(div_m1)},
         "5" = {print(div_m2)},
         "6" = {print(trans_m1)},
         "7" = {print(trans_m2)},
         "8" = {print(inv_m1)},
         "9" = {print(inv_m2)},
         "10" = {
           cat("Exiting the program.\n\n")
           break
         }
  )
  cat("\n")
}
