Rails.application.routes.draw do
 

root to: "teams#index"

get "/teams" => "teams#index", as: :teams 

post "/teams" => "teams#create", as: :new_team

get "/teams/:id" => "teams#show", as: :team 

get "/teams/:id/edit" => "teams#edit", as: :edit_team

patch "/teams/:id" => "teams#update" 

get "/players/:id/edit" => "players#edit", as: :edit_player

get "/players/:id/delete" => "players#delete"

post "/players" => "players#create"

patch "/players/:id" => "players#update" 

post "/sponsorships" => "sponsorships#create"

end
