Rails.application.routes.draw do

<<<<<<< HEAD
  get "/cookbooks" => "cookbooks#index"

=======
  # root route
  root to: "cookbooks#index"

  # display all cookbooks
  get "/cookbooks" => "cookbooks#index"

  # display one cookbook
  get "/cookbooks/:id" => "cookbooks#show", as: :cookbook

  # display the EDIT form for a cookbook
  get "/cookbooks/:id/edit" => "cookbooks#edit", as: :edit_cookbook

  # process an UPDATE or edit to a cookbook record
  patch "/cookbooks/:id" => "cookbooks#update"

  # renders a NEW cookbook form
  # get "/cookbooks/new" => "cookbooks#new"

  # this processes the form input
  post "/cookbooks" => "cookbooks#create"

  # for demo purposes
  # get "/secret" => "cookbooks#secret_code"

  # post or ADD one or more recipes
  post "/recipes" => "recipes#create"

  # get one RECIPE
  get "/recipes/:id" => "recipes#index", as: :recipe

  # get EDIT form for recipes
  get "/recipes/:id/edit" => "recipes#edit", as: :edit_recipe

  # process form data for UPDATE or edit actions
  patch "/recipes/:id" => "recipes#update"

>>>>>>> 37ba2b78ffaa8dbf8b9ab3dfccea0af6c5b7733f
end
