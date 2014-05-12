Rails.application.routes.draw do

  root to: "studios#index"

  get "/studios" => "studios#index"

  get "/studios/:id" => "studios#show"

  post "/studios" => "studios#create"

  post "/games" => "games#create"


end
