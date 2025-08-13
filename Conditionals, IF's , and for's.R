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
