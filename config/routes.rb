Rails.application.routes.draw do
  devise_for :users
  get 'tweet_feed/index'
  get 'cafe/index'
  root 'home#index'
end
