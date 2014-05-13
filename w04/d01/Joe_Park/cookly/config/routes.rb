Rails.application.routes.draw do

  # root route
  root to: "cookbooks#index"

  get "/cookbooks" => "cookbooks#index"

  get "/cookbooks/:id" => "cookbooks#show", as: :cookbook

  get "/cookbooks/:id/edit" => "cookbooks#edit", as: :edit_cookbook

  patch "/cookbooks/:id" => "cookbooks#update"

  # renders a NEW cookbook form
  # get "/cookbooks/new" => "cookbooks#new"

  # this processes the form input
  post "/cookbooks" => "cookbooks#create"

  post "/recipes" => "recipes#create"

end
