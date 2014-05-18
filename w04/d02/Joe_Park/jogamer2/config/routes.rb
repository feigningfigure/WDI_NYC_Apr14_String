Rails.application.routes.draw do

  root to: "studios#index"

  get "/studios" => "studios#index"

  get "/studios/:id" => "studios#show", as: :studio

  get "/studios/:id/edit" => "studios#edit", as: :edit_studio

  patch "/studios/:id" => "studios#update"

  post "/studios" => "studios#create"

  post "/games" => "games#create"

  get "/games/:id" => "games#show", as: :game

  get "/games/:id/edit" => "games#edit", as: :edit_game

  patch "/games/:id" => "games#update"

  get "/players/:id" => "players#show"

  post "/players" => "players#create"

end
