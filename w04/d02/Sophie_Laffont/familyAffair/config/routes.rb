Rails.application.routes.draw do

  # root route
  root to: "parents#index"

  # display all parents
  get "/parents" => "parents#index"

  # display one cookbook
  get "/parents/:id" => "parents#show", as: :cookbook

  # display the EDIT form for a cookbook
  get "/parents/:id/edit" => "parents#edit", as: :edit_cookbook

  # process an UPDATE or edit to a cookbook record
  patch "/parents/:id" => "parents#update"

  # renders a NEW cookbook form
  # get "/parents/new" => "parents#new"

  # this processes the form input
  post "/parents" => "parents#create"

  # for demo purposes
  # get "/secret" => "parents#secret_code"

  # post or ADD one or more childrens
  post "/childrens" => "childrens#create"

  # get one RECIPE
  get "/childrens/:id" => "childrens#index", as: :recipe

  # get EDIT form for childrens
  get "/childrens/:id/edit" => "childrens#edit", as: :edit_recipe

  # process form data for UPDATE or edit actions
  patch "/childrens/:id" => "childrens#update"

end
