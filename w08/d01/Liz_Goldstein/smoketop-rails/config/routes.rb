SmoketopApp::Application.routes.draw do

  root "users#index"

  resources :beasts

  get "/about" => "beasts#about"

  resources :users

  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"

end
