SmoketopApp::Application.routes.draw do
  # root "beasts#welcome"
  root "beasts#index"

  get "/beasts" => "beasts#index"

  post "/" => "beasts#create"
  # get "/about" => "beasts#about"
end

