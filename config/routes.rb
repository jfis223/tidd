Rails.application.routes.draw do
devise_for :users, :controllers => { :registrations => :registrations }

  root to: 'pages#home'
  get "dashboard", to: 'pages#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :plants
  resources :pets do
    resources :pet_categories do
      resources :pet_notifications
    end
  end

end
