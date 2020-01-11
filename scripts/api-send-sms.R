library(httr)
library(jsonlite)

api_key <- "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJsb2dpbklkIjoiMzE2NDQ1IiwiaXNzIjoiU21zUG9ydGFsU2VjdXJpdHlBcGkiLCJhdWQiOiJBbGwiLCJleHAiOjE1Nzg3NDE2NDcsIm5iZiI6MTU3ODY1NTI0N30.uul-X3uQp3Nyn7in_5CFcZCHi3_M2a151jOzeexuFCo"
header <- sprintf("Bearer [%s]", api_key)
base_url <- "https://rest.smsportal.com"
api_endpoint <- "/v1/bulkmessages"
query_url <- paste0(base_url, api_endpoint)

args = '{"messages":[{"content": "Hello SMS World", "destination": "+27833852564"}]}'

httr::POST(url = "https://rest.smsportal.com/v1/bulkmessages",
           body = args,
           httr::add_headers(
             "Content-Type" = "application/json",
             "Authorization" = paste('Bearer', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJsb2dpbklkIjoiMzE2NDQ1IiwiaXNzIjoiU21zUG9ydGFsU2VjdXJpdHlBcGkiLCJhdWQiOiJBbGwiLCJleHAiOjE1Nzg3NDM2NjIsIm5iZiI6MTU3ODY1NzI2Mn0.p6a6-xISHbWRq2JH2fsosoqlVKa6quRmKpxkr9B6vCc'))
             )

# Function for querying the data
api_data <- function(url, api) {
  request <- httr::GET(url,
                       httr::add_headers("Authorization" = api))
  json <- httr::content(request, as = "text")
  api_data <- jsonlite::fromJSON(json)
  api_data
}
api_data(query_url, header)

in
