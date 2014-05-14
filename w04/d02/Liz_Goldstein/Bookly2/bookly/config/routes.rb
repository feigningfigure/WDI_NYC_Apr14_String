Rails.application.routes.draw do

  root to: "authors#index"

  get "/authors" => "authors#index"

  get "/authors/:id" => "authors#show", as: :author

  post "/authors" => "authors#create"

  post "/books" => "books#create"

  get "/authors/:id/edit" => "authors#edit", as: :edit_author

  patch "/authors/:id" => "authors#update"

  get "/books/:id/edit" => "books#edit", as: :book

  patch "/books/:id/edit" => "books#update"
end
