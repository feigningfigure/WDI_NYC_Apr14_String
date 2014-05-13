Rails.application.routes.draw do

  # root route
  root to: "users#index"

  # display all users
  get "/users" => "users#index"

  # display one cookbook
  get "/users/:id" => "users#show", as: :user

  # display the EDIT form for a cookbook
  get "/users/:id/edit" => "users#edit", as: :edit_user

  # process an UPDATE or edit to a cookbook record
  patch "/users/:id" => "users#update"

  # renders a NEW cookbook form
  get "/users/new" => "users#new"

  # this processes the form input
  post "/users" => "users#create"

  # for demo purposes
  # get "/secret" => "cookbooks#secret_code"

  # post or ADD one or more recipes
  post "/devices" => "devices#create"

  # get one RECIPE
  get "/devices/:id" => "devices#index", as: :device

  # get EDIT form for recipes
  get "/devices/:id/edit" => "devices#edit", as: :edit_device

  # process form data for UPDATE or edit actions
  patch "/devices/:id" => "devices#update"

end
