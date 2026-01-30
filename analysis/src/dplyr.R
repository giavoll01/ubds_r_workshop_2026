library(dplyr)

mean(gapminder$gdpPercap[gapminder$continent == "Africa"])

## select function 

year_country_gdp <- dplyr::select(gapminder, year, country, gdpPercap) ## USE FOR CHART REVIEW
year_country_gdp

smaller_gapminder <- select(gapminder, -continent)


year_country_gdp <- gapminder %>% select(year, country, gdpPercap)
head(year_country_gdp)

#Rename columns PLEASE USE FOR CHART!!!!
tidy_gdp <- year_country_gdp %>% rename(gdp_per_capita = gdpPercap)
tidy_gdp


#filter()

year_country_gdp_euro <- gapminder %>% 
  filter(continent == "Europe") %>%
  select(year, country, gdpPercap)
head(year_country_gdp_euro)


year_country_gdp_euro_2007 <- gapminder %>%
  filter(continent == "Europe") %>%
  filter(year == 2007) %>%
  select(country, lifeExp)

year_country_gdp_euro_2007

## group by function group_by()

str(gapminder)
str(gapminder %>% group_by(continent))

gdp_bycontinents <- gapminder %>%
  group_by(continent) %>%
  summarize(mean_gdpPercap = mean(gdpPercap))
gdp_bycontinents

# group_by() multiple variables at the same time 

gdp_bycontinents_byyear <- gapminder %>%
  group_by(continent, year) %>%
  summarize(mean_gdpPercap = mean(gdpPercap))
gdp_bycontinents_byyear


gdp_pop_bycontinents_byyear <- gapminder %>%
  group_by(continent, year) %>%
  summarize(mean_gdpPercap = mean(gdpPercap),
            sd_gdpPercap = sd(gdpPercap),
            mean_pop = mean(pop),
            sd_pop = sd(pop))
gdp_pop_bycontinents_byyear

#count() n()
gapminder %>%
  filter(year == 2002) %>%
  count(continent, sort = TRUE)

gapminder %>% 
  group_by(continent) %>%
  summarize(se_le = sd(lifeExp)/sqrt(n()))

## mutate()


gdp_pop_bycontinents_byyear <- gapminder %>%
  mutate(gdp_billion = gdpPercap * pop / 10^9) %>%
  group_by(continent, year) %>%
  summarize(mean_gdpPercap = mean(gdpPercap),
            sd_gdpPercap = sd(gdpPercap),
            mean_pop = mean(pop),
            sd_pop = sd(pop),
            mean_gdp_billion = mean(gdp_billion),
            sd_gdp_billion = sd(gdp_billion))

gdp_pop_bycontinents_byyear













