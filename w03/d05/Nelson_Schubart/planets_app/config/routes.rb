Rails.application.routes.draw do

  resources :planets do
    resources :moons
  end

get "/planets" => "planets#index"

get "/planets/new" => "planets#new"

post "/planets" => "planets#create"

get "/planets/:id" => "planets#show"



get "/planets/:planet_id/moons" => "moons#index"

post "/planets/:planet_id/moons" => "moons#create"

get "/planets/:planet_id/moons/new" => "moons#new"

get "/planets/:planet_id/moons/:id" => "moons#show"
# get "/moons" => "moons#index"

# get "/moons/new" => "moons#new"

# post "/moons" => "moons#create"

# get "/moons/:id" => "moons#show"

end
