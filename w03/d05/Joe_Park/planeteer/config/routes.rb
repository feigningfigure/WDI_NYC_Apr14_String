Rails.application.routes.draw do
  
  get "/planets" => "planets#index"

  get "/planets/new" => "planets#new"

  post "/planets" => "planets#create"

  get "/planets/:id" => "planets#show"

  get "/moons/new" => "moons#new"

  post "/moons" => "moons#create"

  # get "/planets/:id/moons/:planet_id" => "moons#show"


end
