Rails.application.routes.draw do

  root to: "genres#index"

  get "/genres" => "genres#index"

  get "/genres/:id" => "genres#show", as: :genre

  get "/genres/:id/edit" => "genres#edit", as: :edit_genre

  patch "/genres/:id" => "genres#update"

  post "/genres" => "genres#create"

  post "/bands" => "bands#create"

  get "/bands/:id" => "bands#index", as: :band

  get "/bands/:id/edit" => "bands#edit", as: :edit_band

  patch "/bands/:id" => "bands#update"

end
