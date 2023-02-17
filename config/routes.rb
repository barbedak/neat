Rails.application.routes.draw do
  resources :brews
  resources :washings
  resources :products
  resources :series
  resources :employees
  resources :equipment_types
  resources :equipment
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
