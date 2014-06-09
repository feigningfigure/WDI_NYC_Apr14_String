SmoketopApp::Application.routes.draw do
  root to: "beasts#welcome"

  resources :beasts
  # get "/beasts" => "beasts#index"

  # get "/about" => "beasts#about"

  # # Adding in the create route, although they can all be replaced with the :resources helper

  # post "/create" => "beasts#create"

end
