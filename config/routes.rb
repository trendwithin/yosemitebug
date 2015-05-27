Rails.application.routes.draw do
  get 'tweet_feed/index'

  root 'home#index'
end
