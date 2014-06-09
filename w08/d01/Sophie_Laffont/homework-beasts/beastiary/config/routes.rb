SmoketopApp::Application.routes.draw do
  root "beasts#welcome"

  get "/beasts" => "beasts#index"

  get "/about" => "beasts#about"

   # renders a NEW beast form
   get "/beasts/new" => "beasts#new"

   # processes the form input
   post "/beasts" => "beasts#create"

end
