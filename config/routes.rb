Rails.application.routes.draw do
  resources :menus
  devise_for :users
  get 'tweet_feed/index'
  get 'lodgings/index'
  get 'lodgings/main'
  get 'cafe/index'
  root 'home#index'
end
