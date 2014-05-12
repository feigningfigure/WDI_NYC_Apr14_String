Rails.application.routes.draw do

get "/planets" => "planets#index"

get "/planets/new" => "planets#new"

post "/planets" => "planets#create_planet"

get "/planets/:id" => "planets#show"



get "/planets/:planet_id/moons" => "moons#index"

post "/planets/:planet_id/moons" => "moons#create"

get "/planets/:planet_id/moons/new" => "moons#new"

get "/planets/:planet_id/moons/:id" => "moons#show"

#METHOD 2

# get "/planets/:id/newmoon" => "planets#newmoon"

# post "/planets/:id" => "planets#create_moon"




#METHOD 1

# get "/moons/new" => "moons#newmoon"

# post "/moons" => "moons#create"




end
