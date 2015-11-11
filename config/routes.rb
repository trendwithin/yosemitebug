Rails.application.routes.draw do
  get 'directions/index'
  get 'groups/index'

  get 'activities/spring'

  get 'activities/summer'

  get 'activities/autumn'

  get 'activities/winter'

  get 'spas/index'

  resources :menus
  devise_for :users
  get 'tweet_feed/index'
  get 'lodgings/index'
  get 'lodgings/main'
  get 'cafe/index'
  root 'home#index'
end
