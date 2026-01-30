## USE THIS FOR CHART REVIEW!!!


# Install the ggplot2 package
install.packages("ggplot2")
library(ggplot2)
gapminder <- read.csv("data/gapminder.csv")

ggplot(data = gapminder) #no output

ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp)) #just creates x and y axes 

ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp)) +
  geom_point() #outputs data shape with data points (dot plot)

ggplot(data = gapminder, mapping = aes(x = year, y = lifeExp)) +
  geom_point() # doesn't really work for this data type 

ggplot(data = gapminder, mapping = aes(x = year, y = lifeExp, color = continent)) +
  geom_line()

ggplot(data = gapminder, mapping = aes(x = year, y = lifeExp, 
  group = country, color = continent)) +
  geom_line()

ggplot(data = gapminder, mapping = aes(x = year, y = lifeExp, 
  group = country, color = continent)) +
  geom_line() + geom_point()


ggplot(data = gapminder, 
       mapping = aes(x=year,
                     y=lifeExp,
                     group=country)) +
  geom_line(mapping = aes(color=continent)) + 
  geom_point() #changing the mapping order changes the appearance of your plot 

ggplot(data = gapminder, 
       mapping = aes(x=year,
                     y=lifeExp,
                     group=country)) +
  geom_point() +
  geom_line(mapping = aes(color=continent)) #puts lines on top of points 
  


