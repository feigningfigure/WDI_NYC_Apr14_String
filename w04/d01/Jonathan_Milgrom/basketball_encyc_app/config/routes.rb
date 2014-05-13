Rails.application.routes.draw do
 

root to: "teams#index"

get "/teams" => "teams#index" 

post "/teams" => "teams#create"

get "/teams/:id" => "teams#show" 

get "/players" => "players#show"

end
