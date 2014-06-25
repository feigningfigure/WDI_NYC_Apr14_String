SmoketopApp::Application.routes.draw do
  root "beasts#welcome"

  get "/beasts" => "beasts#index"

  post "/beasts" => "beasts#index"

  get "/about" => "beasts#about"

  get '/users' => "beasts#index"

end
