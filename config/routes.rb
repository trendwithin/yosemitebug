Rails.application.routes.draw do
  get 'tweet_feed/index'
  get 'cafe/index'
  root 'home#index'
end
