Rails.application.routes.draw do

  # root route
  root to: "cookbooks#index"

  get "/cookbooks" => "cookbooks#index"

  get "/cookbooks/:id" => "cookbooks#show"

  # renders a NEW cookbook form
  # get "/cookbooks/new" => "cookbooks#new"

  # this processes the form input
  post "/cookbooks" => "cookbooks#create"

  get "/secret" => "cookbooks#secret_code"

  post "/recipes" => "recipes#create"

end
