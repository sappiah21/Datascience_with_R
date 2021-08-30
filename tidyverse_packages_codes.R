

rm(list=ls(all=TRUE))

install.packages("tidyverse")
library("tidyverse")


#We are going to work with starwars data

glimpse(starwars)
view(starwars)

mydata <- read_csv(starwars, "Codes/mycsvdata.csv")   #Saving my data

head(starwars, n=5)  #first 5 rows


tail(starwars, n=5)    #last bottom 5 rows

head(tail(starwars, n = 87), n = 5)      # To select the first five rows from the bottom 


#Pipes

glimpse(starwars)

starwars %>%  # this is my data set
  glimpse()   #this is a function to let me understand my dataset

#We can also assign data 

know_me_well <- starwars %>%
  glimpse()


#Select ----------------verb---------------------- is for columns

selecteddata <- starwars %>%
  select(name, height, mass, hair_color, skin_color, birth_year, sex) %>%
  view()


selecteddata_2 <- starwars %>%
  select(name, height, mass, hair_color, skin_color, birth_year, sex)

 




#2b

selecteddata_2 <- starwars %>%
  select(name:sex) %>%
  view()


#Filter verb is for rows

filtereddata <- starwars %>%
  filter(sex == "male")%>%
  data.frame()

view(filtereddata)


write_csv(filtereddata, "data/filter.csv") # save the data


#Alternative

selecteddata_2 <- starwars %>%
  filter(sex == "Male" & height >= 174)%>%
  view()



view(selecteddata_2)




#Arrange verb

#ascending order

sorteddata <-  starwars %>%
  arrange(height)%>%
  view()



#Descending

sorteddata <-  starwars %>%
  arrange(desc(height))%>%
  view()



#Rename columns

renamecolumns <- starwars %>%
  rename(new_height = height, new_gender = gender) %>%
  view()



#Mutate verb :ad new column to the existing data set

renamecolumns <- starwars %>%
  mutate(height_sq = height^2,                          # I am creating new heightsquare from height
         sex_binary = ifelse(sex == "male", 1, 0))%>%
  view()



#Group_by_verb and summarize














#importing data

csv_data <- read_csv("https://cdn.quantargo.com/assets/user/courses/825ba7ff-2b2d-434f-bd29-28c3a8b7f3a4.json", "Codes/csvdata.csv")
  