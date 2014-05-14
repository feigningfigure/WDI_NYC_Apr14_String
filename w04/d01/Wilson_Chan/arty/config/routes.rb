Rails.application.routes.draw do

  # root route shorthand version
  root "galleries#index"

  get "/galleries" => "galleries#index"

  get "/galleries/:id" => "galleries#show"

  # renders a NEW gallery form
  # get "/galleries/new" => "galleries#new"

  # this processes the form input
  # post "/galleries" => "galleries#create"

  # get "/secret" => "galleries#secret_code"

  # post "/artists" => "artists#create"


end
