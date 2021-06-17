Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :plants
  resources :pets
  resources :pet_categories
  resources :pet_notifications
  get "dashboard", to: 'pages#dashboard'

end
