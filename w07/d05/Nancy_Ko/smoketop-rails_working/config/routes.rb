SmoketopApp::Application.routes.draw do
  root "beasts#welcome"
  resources :beast do
  # get "/beasts" => "beasts#index"

  # get "/about" => "beasts#about"
  end
end
