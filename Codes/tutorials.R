#Assignment 1

first_name <- c("Sam","Divine", "George", "Abena", "Kweku")

last_name <- c("Akan", "Qyason", "Lawson", "Kwao", "Boafo")

gender <- c("Male", "Male", "Male", "Female", "Male")

age <- c(35, 30, 41, 25, 28)

marital_status <- c("Married", "Single", "Married", "Single", "Married")

nationality <- c("British", "Ivorian", "Ghanaian", "American", "Ugandan")

data.frame(first_name, last_name, gender, age, marital_status, nationality)



Age <- c(30, 50)
print(Age)

Sex <- c( 'Male', 'Female')
print(Sex)

data.frame(Age, Sex)


?data.frame #or 

help(data.frame)


cal_area <- function(p,r){
  
  area <- p * (r)^2
  
  return(area)
}

cal_area (2.142, 3)
