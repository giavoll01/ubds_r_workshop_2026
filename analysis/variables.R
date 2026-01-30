# Data Structures and Types

# There are five data types in R 

#This is a double (1)
double_var <- 3.14
typeof(double_var)

double_var_2 <- 1
typeof(double_var_2)

# This is an integer (2)
int_var <- 4L
typeof(int_var)

# This is a complex number (3)
complex_var <- 1+1i
typeof(complex_var)

# This is a LOGICAL (4)
logical_var <- TRUE
typeof(logical_var)

# This is a character (5)
char_var <- "This is a character"
typeof(char_var)

45 + "word"

5 * "a"

#Collections
# Vectors: a list of data, all data within the vector has to be the same type. If you don't specify it will default to logical.

my_vector <- vector(length = 3)
my_vector

another_vector <- vector(mode = 'character', length = 3)
another_vector

str(another_vector)
str(my_vector)

another_vector[1]

double_vector <- c(5, 7, 9)
double_vector
double_vector[3]

# We can change values in a vector by index
double_vector[1] <- 13
double_vector


# What about if we define vectors with multiple data types?

multi_vector <- c(2, 6, '3')
multi_vector
# This is called 'type coercion' if there are multiple data types in a vector, it will force them to be the same
coercion_vector <- c('a', TRUE)
coercion_vector
str(coercion_vector)
str(multi_vector)

# Type coercion flor 
# logical > integer > double > complex > character

another_coercion_vector <- c(4, TRUE)
another_coercion_vector

# We can go against the coercion flow 
character_vector <- c('0', '2', '4')
character_vector

converted_vector <- as.double(character_vector)
converted_vector

# Lists 
list_example <- list(1, "a", TRUE, 1+4i)

list_example
str(list_example)
# Lists can hold multiple types of variables 

# Lists are accessed a little differently 
list_example[[2]]

# we can add meta data to lists 
another_list <- list(
  title = "Numbers",
  numbers = 1:10,
  data = TRUE
)

another_list

another_list$title
another_list$numbers
another_list$data
str(another_list$numbers)

# Matrix 

matric_example <- matrix(0, nrow=6, ncol=3)
matric_example

dim(matric_example
    )
typeof(matric_example)

# we can check number of rows 
nrow(matric_example)
ncol(matric_example)

matric_example[1, 1]

matric_example + 2

matric_example_2 <- matric_example + 2
matric_example_2

matric_example_2 * matric_example_2

# Dataframes 

cats <- data.frame(
  coat = c("calico", "black", "tabby"),
  weight = c(2.1, 5.0, 3.2),
  likes_catnip = c(1, 0, 1)
)

cats
typeof(cats)
# a data frame is a list of vectors

class(cats)


# we can access columns by name 

cats$weight
cats$coat
cats$likes_catnip

# we can perform operations
cats$weight + 2

cats$weight + cats$likes_catnip
cats$weight + cats$coat

paste("My cat is ", cats$coat)

typeof(cats$weight)

# lets add a new row to our data fram
additional_cats <- data.frame(
  coat = "tabby",
  weight = "2.3 or 2.4",
  likes_catnip = 1
)

additional_cats

combined_cats <- rbind(cats, additional_cats)
combined_cats


typeof(cats$weight)
typeof(combined_cats$weight)

cats[1,1]
cats

cats[,1]

cats[1,]





























