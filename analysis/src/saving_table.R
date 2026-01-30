### Saving tables 

aust_subset <- gapminder[gapminder$country == "Australia", ]
 
head(aust_subset)
dim(aust_subset)

write.csv(aust_subset,
          file = "data/gapminder_aust_subset.csv",
          row.names = FALSE,
          quote = FALSE)
write.table(aust_subset,
            file = "data/gapminder_aust_subset_write_table.csv",
            sep = ",")


