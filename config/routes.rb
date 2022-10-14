Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  passwordless_for :users, at: '/', as: :auth

  resource :users, only: [:new, :create]
  root "users#new"
end
