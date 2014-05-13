Rails.application.routes.draw do
 

root to: "teams#index"

get "/teams" => "teams#index" 

post "/teams" => "teams#create"

get "/teams/:id" => "teams#show" 

get "/teams/:id/edit" => "teams#edit", as: :edit_team

patch "/teams/:id" => "teams#update" 

post "/players" => "players#create"


end
