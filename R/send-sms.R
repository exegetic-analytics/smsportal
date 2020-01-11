#' Send SMS.
#'
#' @param to Number to send SMS to.
#' @param from Number to send SMS from.
#' @param message SMS message.
#'
#' @return GET url response.
#' @import httr
#' @export
#'
#' @examples
#' send_sms("2783000000", "2783000001", "Hello world.")
#' send_sms()
send_sms <- function(to, message) {

  # Assign SMSPortal API token.
  #
  token <- smsportal_token()

  # Assign message details.
  #
  args <- sprintf('{"messages":[{"content": "%s", "destination": "%s"}]}', message, to)

  # Assign API url.
  #
  # Details of the API can be found here:
  # https://docs.smsportal.com/docs
  #
  base_url <- "https://rest.smsportal.com"
  api_endpoint <- "/v1/bulkmessages"
  API_URL_SMSPORTAL <- paste0(base_url, api_endpoint)

  # Build POST request to send text message.
  #
  httr::POST(url = API_URL_SMSPORTAL,
             body = args,
             httr::add_headers(
               "Content-Type" = "application/json",
               "Authorization" = paste("Bearer", token)
             )
  )
}
