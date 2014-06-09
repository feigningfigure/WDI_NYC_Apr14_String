SmoketopApp::Application.routes.draw do
  root "beasts#welcome"

  resources :beasts

  # get "/beasts" => "beasts#index"

  get "/about" => "beasts#about"
end
