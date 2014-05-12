Rails.application.routes.draw do
  #Display all planets path
  get "/planets" => "planets#index"
  #New planet path
  get "planets/new" => "planets#new"
  # Create planet path
  post "planets/" => "planets#create"
  #Display a specific planet
  get "planets/:id" => "planets#show"
end
