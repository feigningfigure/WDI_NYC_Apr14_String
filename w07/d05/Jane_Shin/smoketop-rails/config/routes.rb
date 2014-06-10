SmoketopApp::Application.routes.draw do
  get "sessions/new"
  get "users/new"
  root "beasts#welcome"

  get "/beasts" => "beasts#index"

  get "/about" => "beasts#about"
end
