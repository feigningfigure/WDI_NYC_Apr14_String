Rails.application.routes.draw do

root to: "artists#index"

get "/artists" => "artists#index"

get "/artists/:id" => "artists#show", as: :artist

get "/artists/:id/edit" => "artists#edit", as: :edit_artist


  patch "/artists/:id" => "artists#update"


post "/works" => "works#create"


get "/works/:id" => "works#index", as: :work

  get "/works/:id/edit" => "works#edit", as: :edit_work

  patch "/works/:id" => "works#update"
end
