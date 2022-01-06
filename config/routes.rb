Rails.application.routes.draw do 
  #root "articles#index"
  root "home#index"
  resources :articles
  resources :users
  get "/signup" => "users#new"
  get "/signin" => "sessions#new"
  # get "/signin" => "sessions#create"
  resources :sessions
  # get "/signin" => "sessions#create" as sessions
end