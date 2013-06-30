require 'tumblr_client'

Tumblr.configure do |config|
  config.consumer_key = ENV.fetch('TUMBLR_KEY')
  config.consumer_secret = ENV.fetch('TUMBLR_SECRET')
  config.oauth_token = "access_token"
  config.oauth_token_secret = "access_token_secret"
end

