Rails.application.routes.draw do
  get 'home/index'
  resources :reminders
  resources :tags

  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
