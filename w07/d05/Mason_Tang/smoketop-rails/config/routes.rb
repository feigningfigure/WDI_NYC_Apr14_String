SmoketopApp::Application.routes.draw do
  root "beasts#welcome"

  get "/beasts" => "beasts#index"

  post "/beasts" => "beasts#create"

  get "/about" => "beasts#about"
end
