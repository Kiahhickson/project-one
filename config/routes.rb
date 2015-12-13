Rails.application.routes.draw do
  resources :users
  resources :listings
  resources :reviews
end
