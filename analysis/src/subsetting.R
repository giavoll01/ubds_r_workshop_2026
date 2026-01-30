### USE THIS FOR CHART REVIEW!!!!!


x <- c(3,4,6,7,8)
x

# Naming a vector
names(x) <- c("a", "b", "c", "d", "e")
x
#how to access values in a vector by index
x[1]
# use a colon to access multiple values in a vector by index 
x[3:5]
# same as above 
x[c(3,4,5)]

x[7]
x[0]
#no 0 index in R, starts with 1

### Negative indexes, will print everything but the n index
x[-2]
x[c(-1, -5)]
x[-1:5] ## does not work because -1:5 includes 0 


#This is important for chart review!!!!!
# Saving "sliced" vectors"
x <- x[-4]
x

x <- c(1.1, 2.5, 6.4, 8.7)
names(x) <- c("a", "b", "c", "d")
x
#Can either select the values you want to keep, or select the values you want to exclude 


# Access values from x using names 

x[c("a", "c")]

### Access the value from x using LOGICAL value (TRUE/FALSE)
x
x[c(TRUE, FALSE, TRUE, FALSE)]
x

## Subset using logical operators ( <, >, ==)

x
x > 5
x[x > 5]

x[x < 2]
x < 2

x[x == 2]
x[x == 1.1]

x[names(x) == "c"] ##value output 
names(x) == "c" ## logical output 

## More logical operators & and !


## Using & (AND) operator 

x
x > 2  & x < 8

x[x > 2 &  x < 8]

## Using ! (NOT) operator 

x

x > 2 
!x > 2

x[!x > 2]
x[x > 2]


### all() and any ()

all(x > 2) ##are all values in "X" greater than 2? if no, will print FALSE

any(x > 2) ##if any are greater than 2, will print TRUE


### Non-unique names 

x <- 1:8
x
names(x) <- c("a", "a", "a", "a", "b", "b", "c", "d")
x

x[names(x) == "a"]


# Using - (negative) operator for names 

x
x[-7]
x["a"]
x
x[!names(x) == "a"]


x[names(x) == c("a", "d")]
x[!names(x) == c("a", "d")]

x[names(x) != c("a", "d")]


# Recycling vectors 

names(x) == c("a", "d")
length(names(x))
length(c("a", "d"))


# %in% operator looks for all values on excludes values on left and right side 


names(x) %in% c("a", "c")

x[names(x) %in% c("a", "c")]


## Data type factors 

f <- factor(c("a", "a", "b", "c", "c", "d"))
f
#levels show the unique groups 

f[f %in% c("b","c")]
f[-3]


## Martix rnorm makes random values, set.seed keeps the values the same?
set.seed(1)

m <- matrix(rnorm(6*4), ncol=4, nrow=6)
m

m[3:4, c(1,2)]
m[3:4, 1:2]
m[c(3:4), c(1,2)]
m[3,]
m[4,]
m[3, ,drop = FALSE]

m[6]
## matrix numbers going down colums first

m2 <- matrix(1:24, ncol = 4, nrow = 6)
m2
m2[8]

m2 <- matrix(1:24, ncol = 4, nrow = 6, byrow = TRUE)
m2
m2[8]


### List use [[]] when accessing a list/column 

head(mtcars)

xlist <- list(a = "Software Carpentry", 
              b = 1:10,
              data = head(mtcars))
xlist


xlist[1:2]

xlist[[1:2]]

xlist[[2]][1]
xlist[[2]]

xlist[["a"]]
xlist[["b"]]


xlist$data

### Subsetting dataframe, use single brackets [] for data frame 

gapminder <- read.csv("data/gapminder.csv")
head(gapminder)

head(gapminder[["pop"]], drop = FALSE) 
## gives readout for population column excluding those that are missing values 

gapminder[,1:3]
## will print out all rows for columns 1:3 

gapminder[gapminder$lifeExp > 80] #error because this is a two dim dataset 
gapminder[gapminder$lifeExp > 80, ]
