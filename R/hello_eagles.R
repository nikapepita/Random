#' Say hello to Eagle
#' 
#' This function says hello to Eagles depending on daytime.
#' 
#' @param eagles character, the names of the EAGLEs to be greeted.
#' @param daytime character, optional, either "auto" to calculate daytime or "morning" or "evening", "afternoon"
#' 
#' @return Nothing, it will just say hello.
#' 
#' @importFrom lubridate hour
#' @export
hello_eagles <- function(eagles,daytime="auto"){
  
  #decide which daytime it is
  if(daytime=="auto"){
    time <- Sys.time( )
    time_hour <- hour(time)
    
    if(time_hour < 12) daytime <- "morning"
    if(time_hour >= 12 & time_hour < 14) daytime <- "day"
    if(time_hour >= 14 & time_hour < 17) daytime <- "afternoon"
    if(time_hour >= 17 & time_hour < 24) daytime <- "evening"
    if(time_hour >= 0 & time_hour < 12) daytime <- "night"
  }
  
  if(daytime=="morning"){
    greeting<- "Good Morning,"
    } else if (daytime=="evening"){
      greeting <- "Good evenening"
    } else if (daytime=="afternoon"){
      greeting <- "Hi "
    } else if (daytime=="day"){
      greeting <- "Servus "
      } else greeting <- "Hello "

  cat(paste0(greeting, paste0(eagles, collapse=", "), "!"))
}


