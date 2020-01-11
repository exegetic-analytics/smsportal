#' Set or query SMSPortal API token.
#'
#' @param token SMSPortal API token.
#'
#' @return Token.
#' @export
#'
#' @examples
#' smsportal_token("eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJsb2dpbklkIjoiMzE2NDQ1IiwiaXNzIjoiU21zUG9ydGFsU2VjdXJpdHlBcGkiLCJhdWQiOiJBbGwiLCJleHAiOjE1Nzg3NDE2NDcsIm5iZiI6MTU3ODY1NTI0N30.uul-X3uQp3Nyn7in_5CFcZCHi3_M2a151jOzeexuFCo")
#' smsportal_token()
smsportal_token <- function(token = NULL) {
  # Assign API token to a new environment.
  #
  if (!is.null(token)) {
    assign("smsportal_token", token, envir = cache)
  }
  invisible(get("smsportal_token", envir = cache))
}
