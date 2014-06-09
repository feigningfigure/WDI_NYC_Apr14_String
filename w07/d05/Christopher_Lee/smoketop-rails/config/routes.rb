SmoketopApp::Application.routes.draw do
  # root "beasts#welcome"
  root "beasts#index"

  get "/beasts" => "beasts#index"

  # get "/about" => "beasts#about"
end

