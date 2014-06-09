SmoketopApp::Application.routes.draw do
  root "beasts#welcome"

  get "/beasts" => "beasts#index" 

  get "/about" => "beasts#about"

  resources :beasts
end
