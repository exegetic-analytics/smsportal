# smsportal
A wrapper around the [SMSPortal](https://smsportal.com/) API for sending text messages.

## Usage

```
library(smsportal)

USERNAME = "___"
TOKEN    = "___"

smsportal_username(USERNAME)
smsportal_token(TOKEN)

send_sms("27741398329", "27833823965", paste0("Test message at ", Sys.time(), "."))
```

## API token documentation

```
Details of the API can be found here:

https://docs.smsportal.com/docs/rest
```
