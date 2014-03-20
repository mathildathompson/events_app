# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
EventApp::Application.config.secret_key_base = 'b4673c425a1252c98b17a7bf139dd2c9fe7668426c54935f72aa3cc81d22a5eeaa1031486966a29f2faf48d850bf04246c688bbceb761f534d7339aa03bae462'
