##API Eliteserien Fantasy Data
library(httr)

time_check <- function(){
  if(Sys.Date() > old_time){
    old_time <<- Sys.Date()
    return(TRUE)
  }
  FALSE
}




while (TRUE) {
  if(time_check()){
    
    res <- GET("https://fantasy.eliteserien.no/api/bootstrap-static")
    
    res_content <- content(res, as = "text")
    
    api_data <- fromJSON(res_content)
    
    player_elements <- api_data$elements
    
    saveRDS(player_elements, paste0(Sys.Date(), ".rds"))
    
  }
 print(paste("Current is", old_time))
 Sys.sleep(86400)
}




