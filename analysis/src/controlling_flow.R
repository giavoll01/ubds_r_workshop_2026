## Control Flow 
# using if 
# if (condition is true) {
#    perform action
#}

# if ... else 
# if (condition is true) {
#     perfrom action 
#}    else{ # that is, if the condition is false,
#         perform alternative action
#}


# if statement 

x <- 8

if (x >= 10){
  print("x is greater than or equal to 10")
}

# if  ... else 

if (x >= 10){
  print("x is greater than or equal to 10")
}else {
  print("x is less than 10")
}


# multiple testing conditions 

if (x >= 10){
  print("x is greater than or equal to 10")
} else if (x > 5) {
  print("x is greater than 5, but less than 10")
} else {
  print("x is 5 or less than 5")
}



# the first else determines whether the rest of the tests will be run. watch for logical order 



# Use logical values directly 

x <- 4 == 3

if (x) {
  print(" 4 equals 3")
} else {
  print("4 does not equal 3")
}



# ifelse function ifelse(test, yes, no)

y <- -3
y
ifelse(y < 0, "y is a negative number", "y is either positive or 0")

x <- c(TRUE, TRUE, FALSE)
if (x) {
  print("x is true")
}

if (any(x)){
  print("at least one value of x is true")
}

if (all(x)) {
  print("all of the values of x are TRUE")
}

# for loop 

for (i in 1:10) {
  print(i)
}


# nested for loops 

for (i in 1:5) {
  for (j in c("a", "b", "c", "d", "e")) {
    print(paste(i, j))
  }
}

output_vector <- c()
for (i in 1:5) {
  for (j in c("a", "b", "c", "d", "e")) {
    temp_output <- paste(i, j)
    output_vector<- c(output_vector, temp_output)
  }
}

output_vector


# alternative for big datasets 
# predefinining the output size saves computational resources and speed 

output_matrix <- matrix(nrow = 5, ncol = 5)
j_vector <- c("a", "b", "c", "d", "e")

for (i in 1:5) {
  for (j in 1:5) {
   temp_j_value <- j_vector[j] 
   temp_output <- paste(i, temp_j_value)
   output_matrix[i, j] <- temp_output
  }
}
output_vector_2 <- as.vector(output_matrix)
output_vector_2

output_matrix



# while loops 
z <- 1
while (z > 0.1) {
  z <- runif(1)
  cat(z, "\n")
}











