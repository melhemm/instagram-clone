Rails.application.routes.draw do
  devise_for :accounts

  # dashboard
  get "/dashboard" => "accounts#index"
  get "profile/:username" => "accounts#profile", as: :profile
  
  resources :posts, only: [:new, :create, :show]

  root to: 'public#homepage'
end
