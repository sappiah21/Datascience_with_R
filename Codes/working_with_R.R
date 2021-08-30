#Creating variable with vectors
#Name
names<-c('Seth', 'Patrick', 'Owusu', 'Irene')

#AGE

age <- c(20, 40, 50, 60)

#Height

height <- c(4.5, 5.8, 6.8, 9.8)

#SEX
sex <- c('Male', 'Male', 'Male', 'Female')

#Bank account

Money_in_account <- c( 3000.3, 30089.5, 2089.6, 4567.8)


#Checking the attributes of the above vectors
length(names)
typeof(age)
class(names)
as.character(age)

#Creating data frame
data.frame(names, age, sex, height, Money_in_account)

#Save in Excel
excel_data <- data.frame(names, age, sex, height, Money_in_account)
print(excel_data)

#Renaming columns

excel_data_copy <- data.frame(name = names, age = age, sex = sex, savings = Money_in_account, height = height)

print(excel_data_copy)



df <- data.frame(name = names, age = age, sex = sex, savings = Money_in_account, height = height)
print(df)


#Some attributes you can conduct on data frames
nrow(excel_data)
colnames(excel_data)
glimpse(excel_data)
?class




#Lecture 2 August 21,2021


#Ways to select columns and rows
#Function
#name_ofdataset<-[command to select rows, command to select columns]


#Example of selecting columns

firstway <- df[ , c(1:4)] # or
print(firstway)


firstway <- df[ , c(1,4)] # or
print(firstway)


#Other way
firstcol_filter <- c(1, 4)
firstway_copy <- df[ , firstcol_filter]
print(firstway_copy)


##Alternatives
firstway_otherway <- df[ , -c(2, 3)]
print(firstway_otherway)


## Using names of columns to do selection
secondway <- df[  ,names(df) %in% c("age", "savings")]  ## 1.
print(secondway)


thirdway <- subset(df,   select = c("age", "savings"))
print(thirdway)





## General ways to select rows

firstway <- df[c(1:4), ]
print(firstway)


firstrow_filter <- c(1, 4)
firstway_rows <- df[firstcol_filter, ]
print(firstway_rows)


#Number 2
firstrow_otherway <- df[-c(2:3), ]
print(firstrow_otherway)



### Other alternative
secondway_row <- df[which(df$sex == "Male"), ]
print(secondway_row)




#Select rows based on compound conditions
secondway_rowcompound <- df[which(df$sex == "Male" & df$name == c("Patrick", "Seth")), ]
print(secondway_rowcompound)


secondway_rowcompound2 <- df[which(df$sex == "Male" | df$name == "Seth"), ]


#Third way 
#Use the subset function takes three functions
#argument 1: name of data frame
#argument 2: command to select rows
#argument 3: command to select columns

#EXAMPLES

thirdway_row <- subset(df, sex == "Male",  )

thirdway_row2 <- subset(df, sex == "Male" &  name == "Seth",  )



#Selecting both the rows and columns

firstway_rowcol <- df[c(1:4), c(1,4)]  #or

firstrow_filter <- c(1,4)
firstway_rowcol <- df [firstcol_filter, firstcol_filter] #Line 143 and 145 and 146 are the same

#Other way
firstwayrowcol_otherway <- df[-c(2:3), -c(2:3)] # if you only need rows 2 and 3 and column 2 and 3


#Selecting rows based on certain values in column: say select only males in sex

secodway_rowlcol <- df[which(df$sex == "Male"), c("age", "sex", "savings")]

secodway_rowlcol2 <- df[which(df$sex == "Male" & df$name =="Seth"), c("age", "savings")]


#installation of packages
install.packages("tidyverse")
library("tidyverse") #Activate tidyverse


#import csv data
csv_data <- read_csv("data/csvdata.csv")

#Data wrangling
glimpse(csv_data)
nrow(csv_data)
colnames(csv_data)

#save data
write_csv(csv_data, "data/savedcsv.csv")


# 2. Excel data
install.packages("readxl")
library("readxl")

#Import excel data
xl_data = "data/xlsxdata.xlsx"

#import sheets
sheet1data = read_excel(path = xl_data, sheet = "data1")
xlxtocsv <- write_csv(sheet1data, "data/csvdata.csv")


#Working with shapefile
install.packages("sf")
library("sf")


#Loading shapefile

sf_shp <- sf::st_read("data/worldshp/world_countries.shp")

#OR
sf_shp2 <- st_read("data/worldshp/world_countries.shp")

shp<- sf::st_read()


#Plotting maps

install.packages("ggplot2")
library("ggplot2")

ggplot() +
  geom_sf(data = sf_shp) +
  ggtitle("AOI Boundary Plot") +
  coord_sf()


#Save shp files
shpsaved <- sf::write_sf(sf_shp, "data/savedshp/savedfile.shp")



#Converting STATA data to R frame
install.packages("foreign")
library("foreign")

mydata <- read.dta("addressof where data is stored")


#Converting SYstat to R
#Use the same package as the STATA
mydata <- read.systat("addressof where data is stored") #importing into R


#Converting SPSS DATA TO R Frame
install.packages("Hmisc")
library(Hmisc)
mydata <- spss.get("the address where data is stored", use.value.labels = TRUE)


#Converting SAS TO R Frame
#Use the same Hmisc package
mydata2 <- sasxplot.get("address of where the data is stored")