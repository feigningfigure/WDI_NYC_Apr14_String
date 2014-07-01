Rails.application.routes.draw do

root "users#index"


resources :users

  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"






end
