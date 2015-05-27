::Client = Twitter::REST::Client.new do |config|
  config.consumer_key        =  Rails.application.secrets.twitter_api_key
  config.consumer_secret     = ENV["TWITTER_API_KEY_SECRET"]
  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["TWITTER_SECRET_ACCESS_TOKEN"]
end
