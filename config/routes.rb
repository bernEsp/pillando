Rails.application.routes.draw do
  resources :posts, only: [:index, :new, :create]

  passwordless_for :users, at: '/', as: :auth

  resource :users, only: [:new, :create]
  root "users#new"
end
