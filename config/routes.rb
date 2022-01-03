Rails.application.routes.draw do
  resources :posts
  devise_for :accounts

  # dashboard
  get "/dashboard" => "accounts#index"
  
  root to: 'public#homepage'
end
