### Writing functions and data in R 
## my_function <- function(parameters) {
   # perform action 
   # return value 
#}

# Far to Kelvin: K = (yF-32)*(5/9)+273.15

# My first function <3

farh_to_kelvin <- function(temp){
  kelvin <- ((temp - 32) * (5/9)) + 273.15 
  return(kelvin)
}

farh_to_kelvin(32)
farh_to_kelvin(212)

## Combining functions 

kelvin_to_celcius <- function(temp){
  celcius <- temp - 273.15
  return(celcius)
}
kelvin_to_celcius(300)


fahr_to_celsius <- function(temp){
  temp_k <- farh_to_kelvin(temp)
  temp_c <- kelvin_to_celcius(temp_k)
  return(temp_c)
}
fahr_to_celsius(32)

farh_to_kelvin <- function(temp){
  if(!is.numeric(temp)){
    stopifnot("temp must be a numeric vector.")
  }
  kelvin <- ((temp - 32 *(5/9)) + 273.15)
             return(kelvin)
}

farh_to_kelvin(50)


### Complex function 

calcGDP <- function(dat){
  gdp <- dat$pop * dat$gdpPercap
  return(gdp)
}
gapminder <- read.csv("data/gapminder.csv")
head(gapminder)

calcGDP(head(gapminder))

calcGDP <- function(dat, year = NULL, country = NULL){
  if(!is.null(year)){
    dat <- dat[dat$year %in% year, ]
  }
  if(!is.na(country)){
    dat <- dat[dat$country %in% country, ]
  }
  gdp <- dat$pop * dat$gdpPercap
  
  new <- cbind(dat, gdp=gdp)
  return(new)
}

head(calcGDP(gapminder, country = "Australia"))

head(calcGDP(gapminder, 2007,"Australia"))


unique(gapminder$country)
