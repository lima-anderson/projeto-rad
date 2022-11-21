Rails.application.routes.draw do
  get 'home/index'
  
  get 'reminders/today', to: "reminders#show_today"
  get 'reminders/done', to: "reminders#show_done"
  resources :reminders
  resources :tags

  post 'reminders/:id/toggle_status', to: "reminders#toggle_status"

  root 'home#index'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
