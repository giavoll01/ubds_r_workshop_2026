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
  
#Transformations and Stats: scales change how data are displayed, log scales handle skewed distribution
#alpha helps with overplotting 
#geom_smooth() 
#Faceting for multipanel plots 

ggplot(data = gapminder, 
       mapping = aes(x=year,
                     y=lifeExp,
                     group=country)) 
#Original plot 
ggplot (data = gapminder, mapping = aes(x = gdpPercap,
                                        y = lifeExp)) +
  geom_point()


#Scaling and alpha 
ggplot(data = gapminder, mapping = aes(x = gdpPercap,
                                       y = lifeExp)) +
  geom_point(alpha = 0.5) + scale_x_log10()

ggplot(data = gapminder, mapping = aes(x = gdpPercap,
                                       y = lifeExp)) +
  geom_point(alpha = 0.5) + scale_x_log10() + geom_smooth(method="lm",
                                                          linewidth=1.5)


#Creating a multipanel plot 
americas <- gapminder[gapminder$continent == "Americas",]
americas

life_exp_plot <- ggplot(data = americas, mapping = aes(x  = year,
                                      y = lifeExp, 
                                      color = continent)) +
  geom_line() +
  facet_wrap( ~ country) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(x = "Year", y = "Life Expectancy", title = "Figure 1", 
       color = "Continent") +
  theme_dark()

# Export as png

ggsave(filename = "analysis/life_exp.png", 
       plot = life_exp_plot,
       width = 30,
       height = 20,
       dpi = 600,
       units = "cm")









































