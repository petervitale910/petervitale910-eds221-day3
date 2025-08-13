#### Basic if Statements ####

burrito <- 3#assigning object value

#Short if statement
if(burrito > 2){
  print("I love Burritos")
}

#An example with strings
my_ships <- c("Millenium Falcon", "X-Wing", "Tie-Fighter", "Death Star")
stringr::str_detect(my_ships, pattern = "r")

phrase <-  "I Love Burritos"

if (stringr::str_detect(phrase, "love")){
  print("Big Burrito Fan")
}

#### Basic if-else statements ####

pika <-59

if(pika > 60){
  print("mega pika")
} else print("normal pika")


# String examples

food <- "I love tacos"

if(stringr::str_detect(food, "burritos")){
  print ("yay burritos!")
} else {print ("what about burritos")}

#### if-else if-else Statements####
marmot <- 3.8

if(marmot < .5){
  print("small marmot")
}else if (marmot >= .5 & marmot < 3){
  print ("a medium marmot")
}else {
  print("a large marmot!")}

#### Use Switch Function for complicated if else ####

species <- "mouse"
#all this code the same as several if statements
switch(species, 
       "cat" = print("meow"),
       "dog" = print("woof"),
       "mouse" = print("Squeaaaaak"))
#see next week dpylr::case_when()!

#### Writing For loops ####
pupster <- 1
dog_names <- c("teddy", "korra", "banjo", "waffle")

for (pupster in dog_names) {
  print(paste("My dogs name is", pupster))
}

#Another for loop example
mass <-  seq(from = 0,
             to = 3,
             by = .5)

for (i in mass){
  new_val = i+ 2
  print(new_val)
}

#practice with indexing 
for (i in 1:length(mass)) {
  new_val = mass[i]+2
  print(new_val)
  
  
}
for (i in seq_along(mass)) { #seq along is doing 1:nrow stuff
  new_val = mass[i]+2
  print(new_val)
  
  
}

#last one before lunch 

tree_height <- c(1,2,6,10)

for (i in seq_along(trees$Height)) {
  val = trees$Height[i] + trees$Height[i+1]
  print(val)
  
}

(trees$Height)

#### For Loops with conditional statements ####

#Create vector of animals 
animal <- c ("cat", "dog", "dog", "zebra", "dog")


for (i in seq_along(animal)) {
  if(animal[i] == "dog"){
    print("I love dogs")
  } else {
    print ("these are other animals")
  }
}

#Another animal example 

species <- c("dog", "elephant", "goat", "dog", "dog", "elephant")

#perspective ages in human years

age_human <- c(3, 8, 4, 6, 12, 18)

## Convert ages to "animal years" using the following:
# 1 human year = 7 in dog years
# 1 human year = 0.88 in elephant years
# 1 human year = 4.7 in goat years
i=2
for (i in seq_along(species)) {
  if(species[i] == "dog" ){
    animal_age <- age_human[i] * 7
  } else if (species[i] == "elephant"){
    animal_age <- age_human[i] *.88
  } else if (species[i] == "goat"){
    animal_age <-  age_human[i] *4.7
  }
  print(animal_age)
  
}

#allocate space for output

animal_ages <- vector("numeric",length = length(species))

for (i in seq_along(species)) {
  if(species[i] == "dog" ){
    animal_age <- age_human[i] * 7
  } else if (species[i] == "elephant"){
    animal_age <- age_human[i] *.88
  } else if (species[i] == "goat"){
    animal_age <-  age_human[i] *4.7
  }
  animal_ages[i] <- animal_age
}; animal_ages

#Another example of storing

tigers <- c(29,34,82)
lions <- c(2,18,6)

#allocate storage for new value
big_cats <-  vector("numeric", length = length(tigers))
for(i in seq_along(tigers)){
total_cats <- tigers[i]+lions[i]
big_cats[i] <- total_cats
};big_cats

#for loops over multiple columns
mean_mt <- vector("numeric", length = ncol(mtcars))

for(i in 1:ncol(mtcars)){
  mean_val <- mean(mtcars[[i]],na.rm = TRUE)
  mean_mt [i] <- mean_val
}; mean_mt

#for loop over cols with a condition 
library(palmerpenguins)
penguin_median = median(penguins[[3]])


for (i in seq_along(penguins)){
if (is.numeric(penguins[[i]])){
  penguin_median = median(penguins[[i]], na.rm = TRUE)
  print(penguin_median)
} else {
  print( "not numeric")
}
}

#### Functional programming ####

##Apply function iterates over columns or rows

apply(X = mtcars,
      MARGIN = 2, #1 is row 2 is columns
      FUN = mean)

library(tidyverse)

penguins %>% 
  group_by(species) %>% 
  summarise(across(where(is.numeric), mean, na.rm = TRUE))#Across columns where the column is numeric and take a mean 

#purr goes column by column 
purrr::map(.x = mtcars, .f = mean)

map_df(.x = mtcars, .f = mean)

