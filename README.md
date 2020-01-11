# smsportal
A wrapper around the [SMSPortal](https://smsportal.com/) API for sending text messages.

## Usage

### Generate and assign a token (you can skip this step if you have already generated a token)

```
library(smsportal)

CLIENT_ID = "___"
SECRET_KEY = "___"

smsportal_gentoken(CLIENT_ID, SECRET_KEY)
```

### Assign a token (skip this step if you generated a token from scratch at the above step)

```
TOKEN = "___"

smsportal_token(TOKEN)
```

### Send a text message

```
send_sms(to = "27833823965", message = paste0("Test message at ", Sys.time(), "."))
```

## API token documentation

```
Details of the API can be found here:

https://docs.smsportal.com/docs/rest
```
