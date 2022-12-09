Rails.application.routes.draw do
  resources :schedules
  resources :appointments
  devise_for :users
  resources :users, path: '/users_admin'
  post 'create_user' => 'users#create', as: :create_user
  root 'home#index'
  resources :branches
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
