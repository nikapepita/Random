###Create your Package
#Install Rtools
#####################
#install.packages(c("devtools","roxygen2"))

library(devtools)
library(roxygen2)

#Get ready to create a package
has_devel()

setwd("./")
getwd()

create("C:/Users/Annika/Documents/Git/Random/")


##build -> configure -> activate roxygen

##Loop
##If-Else, eg. check condition


a <- 2

if (a>0)
{print("it is a positive number")
} else{
    print("number is not positive")
}


if (a==1)
{print("you won 1€")
} else if(a==2){
  print("you won 2³")
}else {
  print("you loose all")
}

#or
ifelse(a==2, "won","loose")

#for/Repeat -> for loops in R are slow...!!!

for (i in 1:100){
  print(i)
  
}

#While Loop e.g. create buffer around cities until the buffer oberlap
#version1
j <- 0
while (j<1)
{
  j <- j+0.1; print (j)
}

#version2
j <- 0

while (j<1){
  print (j)
  j <- j+0.1; 
}

#functions

#myfunction <- function(arg1,arg2,....){
#  statements
#  return (Object)
#}

#myfunction <- function (x,y){
#  z <- y+x
#  return(z)
#}

#paste - space betwenn, space0, no spae
greet <- function(name){
      paste("how are your",name)
}

greet <- function(name) {glue::glue("how are your,{name}")}

greet("Martin")
  
fun_ndvi <- function(nir,red) {(nir-red)/(nir+red)}  

#calc function to raster calculation, you dont need to extract values
output <- calc(nir,red,fun=fun_ndvi)  


##"morning" is default
hello_eagles <- function(name,daytime="morning"){
  paste0("hello, ", paste0(eagles, collapse=", "), "!")
}
 

# Random:: --> see all functions of the package
  
  
#' Say hello to Eagle
#' 
#' This function says hello to Eagles depending on daytime.
#' 
#' @param eagles character, the names of the EAGLEs to be greeted.
#' @param daytime character, optional, either "morning" or "evening"
#' 
#' @return Nothing, it will just say hello.
#' 
#' @export --> than user have exit to it!
#


#' Say hello to Eagle
#' 
#' This function says hello to Eagles depending on daytime.
#' 
#' @param eagles character, the names of the EAGLEs to be greeted.
#' @param daytime character, optional, either "morning" or "evening"
#' 
#' @return Nothing, it will just say hello.
#' 
#' @importFrom lubridate hour --> packaga function
#' @export
#' 

install.packages("lubridate")
library("lubridate")

today()

Sys.time()
