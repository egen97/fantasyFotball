##API Eliteserien Fantasy Data
install.packages(c("httr", "jsonlite"))
library(httr)
library(jsonlite)

res <- GET("https://fantasy.eliteserien.no/api/bootstrap-static")

res

cat(rawToChar(res$content))

data <- fromJSON(rawToChar(res$content))

