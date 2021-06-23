Rails.application.routes.draw do
devise_for :users, :controllers => { :registrations => :registrations }
  require "sidekiq/web"
        authenticate :user, ->(user) { user.admin? } do
        mount Sidekiq::Web => '/sidekiq'
  end

  root to: 'pages#home'
  get "email", to: 'user_mailer#new_notification'
  get "dashboard", to: 'pages#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'about_us', to: 'pages#about_us'
  resources :plants
  resources :pets do
    resources :pet_categories do
      resources :pet_notifications
    end
  end
end
