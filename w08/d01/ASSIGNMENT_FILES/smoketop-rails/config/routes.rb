SmoketopApp::Application.routes.draw do

  root "users#index"

  get "/beasts" => "beasts#index"

  get "/about" => "beasts#about"

  resources :users

  post "/login" => "sessions#create"

end
