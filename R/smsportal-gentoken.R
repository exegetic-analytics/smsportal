#' Generate SMSPortal API token.
#'
#' @param client_id SMSPortal client ID.
#' @param secret_key SMSPortal secret key.
#'
#' @return Token.
#' @import jsonlite
#' @import RCurl
#' @export
#'
#' @examples
#' smsportal_token(client_id = "", secret_key = "")
#' smsportal_token()
smsportal_gentoken <- function(client_id, secret_key) {
  # Generate a Base64 encoded 'client_id:secret_key'
  #
  encode <- paste0(client_id, ":", secret_key)
  authorisation <- RCurl::base64Encode(encode)[1]

  # Build GET command to generate API token.
  #
  request <- httr::GET(url = "https://rest.smsportal.com/v1/Authentication",
                     httr::add_headers(
                       "Authorization" = paste("BASIC", authorisation)
                     )
  )

  # Extract raw token
  #
  token <- rawToChar(request[[6]])
  token <- jsonlite::fromJSON(token)[[1]]

  # Assign API token to a new environment.
  #
  if (!is.null(token)) {
    assign("smsportal_token", token, envir = cache)
  }
  invisible(get("smsportal_token", envir = cache))
}
