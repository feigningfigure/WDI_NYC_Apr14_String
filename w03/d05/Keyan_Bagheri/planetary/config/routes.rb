Rails.application.routes.draw do

  get "/" => "planets#index"

  get "/planets" => "planets#index"

  get "/planets/new" => "planets#new"

  post "/planets" => "planets#create"

  get "/planets/:id" => "planets#show"

  get "/planets/update/:id" => "planets#update"

  post "/planets/update/:id" => "planets#edit"

  get "/planets/delete/:id" => "planets#delete"

  get "/moons" => "moons#index"

  get "/moons/newer" => "moons#newer"

  get "/moons/new/:id" => "moons#new"

  post "/moons" => "moons#create"

  get "/moons/:id" => "moons#show"

  get "/moons/update/:id" => "moons#update"

  post "/moons/update/:id" => "moons#edit"

  get "/moons/delete/:id" => "moons#delete"
end
