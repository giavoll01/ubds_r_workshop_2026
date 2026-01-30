
write.csv(cats, "data/feline-data.csv",
          row.names = FALSE)

### Reading the dataframe to a variable 

cats <- read.csv("data/feline-data.csv")

cats

age <- c(2, 3, 5)

cbind(cats, age)
age <- c(2,3,4,5)
cbind(cats, age)

nrow(cats)
length(age)



age <- c(2,3,5)
cats <- cbind(cats, age)
cats


#### Adding new rows 

newRow <- list("tortoise_shell", 3,3, TRUE, 9)
newRow


cats[-4,]
cat[,-4]
cats[c(-3,-3),]
names(cats)
drop <- names(cats) %in% c("age")
!drop

cats[, !drop]


### Append two data frames 

cats <- rbind(cats, cats)
cats


df <- data.frame(
  first_name = c("Gia"),
  last_name = c("Vollmer"),
  lucky_number = c(13)
)

df

gapminder <- read.csv("data.gapminder_data.csv")
