Rails.application.routes.draw do

  root to: "authors#index"

  get "/authors" => "authors#index"

  get "/authors/:id" => "authors#show"

  post "/authors" => "authors#create"

  post "/books" => "books#create"

  get "/authors/:id/edit" => "authors#edit"

end
