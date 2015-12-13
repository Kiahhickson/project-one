Rails.application.routes.draw do
  get 'reviews/index'

  get 'reviews/new'

  get 'reviews/edit'

  get 'reviews/show'

  resources :users
  resources :listings
  resources :reviews
end
