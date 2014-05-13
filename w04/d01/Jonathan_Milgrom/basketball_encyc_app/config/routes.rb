Rails.application.routes.draw do
 

root to: "teams#index"

get "/teams" => "teams#index", as: :teams 

post "/teams" => "teams#create", as: :new_team

get "/teams/:id" => "teams#show", as: :team 

get "/teams/:id/edit" => "teams#edit", as: :edit_team

patch "/teams/:id" => "teams#update" 

post "/players" => "players#create"


end
