Rails.application.routes.draw do
  resources :users do
    resources :posts, only: [:index, :new, :create] # Nest posts under users
  end

  resources :posts do
    resources :comments, only: [:index, :new, :create] # Nest comments under posts
  end

  resources :comments, only: [:edit, :update, :destroy]

  root "posts#index" # Set a default root route
end
