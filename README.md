# 2fa-login

WORK IN PROGRESS


Golang login page showing 2fa two factor auth with OpenID connect

A phone-based option for 2FA is to use an application that generates codes locally based on a secret key. Google Authenticator is a very popular application for this; FreeOTP is a free software alternative. The underlying technology for this style of 2FA is called Time-Based One Time Password (TOTP), and is part of the Open Authentication (OATH) architecture (not to be confused with OAuth, the technology behind "Log in with Facebook" and "Log in with Twitter" buttons).


Just a simple example code in Go showing a minimal end-to-end flow for server side support for google authenticator. The example code sets up a secret for a single user, generates a QR code as a PNG file that the user can scan into Google Authenticator, and then prompts the user for a token that the user copies from the Authenticator app. We validate the token and print out whether it is valid or not.


# Docs
- 
- https://dexidp.io/docs/using-dex/
