sum(c(2, 3))

add_three_numbers <- function(x, y, z){
  
  add <- x + y + z
  
  return(add)
}

add_three_numbers(2, 3, 4)

Cal_area <- function(p, r){
   
  area <- p*r^2
  
  return(area)
}

Cal_area(2,3)



#Calculating the shrub volume 
cal_shrub_vol <- function(length, width, height){
  
  area <- length * width
  
  volume <- area * height
  
  return (volume)
}

cal_shrub_vol (2, 3.5, 4.3)




#COMPOSING FUNCTIONS

#Converting fahrenheit to celsius

fahrenheit_to_celsius <- function(temp_F) {
  
  temp_C <- (temp_F - 32)* 5/9
  
  return(temp_C)
}

fahrenheit_to_celsius(32)

#The boiling point of water

fahrenheit_to_celsius(212)


Celsius_to_kelvin <- function(temp_C){
  
  temp_K <- temp_C + 273.15
  
  return(temp_K)
}

Celsius_to_kelvin(0)



#Assignment 2

Names <- c("Seth", "Patrick", "Kelvin", "Eben", "Irene", "General", "Eric", "Owusu", "Richie", "Unique")
Age <- c(28, 34, 29, 35, 65, 36, 74, 20, 100, 45)



data.frame(Names, Age)

df <- data.frame(Names, Age)
print (df)


#View it in excel format
excel_data <- data.frame(Names, Age)
print(excel_data)

colnames(excel_data)
glimpse(excel_data)


#1aDescriptive analyses

#The mean
mean_age <- mean(Age) 
print(mean_age)

mean(Age, trim = 0.1) #Removing 10% from the bottom and top from the data

#OR mean(Age)
 
#The median
median_age <- median(Age)
print(median_age) 


#The standard deviation 
standv_age <- sd(Age)
print (standv_age)

#the variance
variance_age <- var(Age)
print(variance_age) 
 
#OR taking the square root of the variance

sdv_age <- sqrt(var(Age))
print(sdv_age)


#The minimum age

min_age <- min(Age)

#The maximum age
max_age <- max(Age)

#The range age
range_age <- range(Age)


#The quantile
quantile_age1 <- quantile(Age, probs = 90/100)

quantile_age2 <- quantile(Age, probs = c(0.2, 0.5, 0.9, 1))
print(quantile_age2)

#The sum of the ages
sume_age <- sum(Age)


#The summary of the data set
summary(df)

summary(Age)
summary(Names)


#1C. Creating a function that gives you the column name
col_nmaes <- function (df){
  
  col_names2 <- colnames(df)
  
  return (numbcol)
  
}
