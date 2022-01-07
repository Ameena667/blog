Rails.application.routes.draw do 
  #root "articles#index"
  root "home#index"
  resources :articles
  resources :users
  get "/signup" => "users#new"
  get "/signin" => "sessions#new"
  delete "/signout" => "sessions#destroy",as: :destroy_session
  resources :sessions
  
end