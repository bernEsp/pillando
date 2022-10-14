Rails.application.routes.draw do
  get 'welcome/index'
  get 're_posts/create'
  get 'likes/create'
  resources :posts, only: [:index, :new, :create]

  passwordless_for :users, at: '/', as: :auth

  resource :users, only: [:new, :create]

  # Welcome
  root "welcome#index"
end
