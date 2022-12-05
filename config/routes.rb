Rails.application.routes.draw do
  resources :appointments
  devise_for :users
  resources :users, only: [:index, :show]
  root 'home#index'
  resources :branches
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
