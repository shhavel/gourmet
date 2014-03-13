# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

# Although this is not needed for an api-only application, rails4 
# requires secret_key_base or secret_token to be defined, otherwise an 
# error is raised.
# Using secret_token for rails3 compatibility. Change to secret_key_base
# to avoid deprecation warning.
# Can be safely removed in a rails3 api-only application.
Gourmet::Application.config.secret_token = '8caf3882d7a90c55d5208162fc1ddaab265c003bbe62c2892bd4774d19f3fbb23f567bce3dbcb98842392c3e94b97fe326d3c32ad78d8af6a108bba54ab3efe0'
Gourmet::Application.config.secret_key_base = '27e21dbb1467a56c5c80829fda620e5debc9f9382f448191271a1b941b33149b69d4d7fb0fa69988c5c86ffb59f62883225ee4bec9515af337ebe1ad22bd85d5'
