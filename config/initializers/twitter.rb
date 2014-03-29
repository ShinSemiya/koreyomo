#require 'twitter'
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = Settings.twitter.consumer_key
  config.consumer_secret     = Settings.twitter.consumer_secret
#  config.access_token        = "YOUR_ACCESS_TOKEN"
#  config.access_token_secret = "YOUR_ACCESS_SECRET"
end