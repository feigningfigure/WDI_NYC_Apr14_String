Rails.application.routes.draw do

  root to: "vertebraes#index"

  get "/vertebraes" => "vertebraes#index"

  get "/vertebraes/new" => "vertebraes#new"

  post "/vertebraes" => "vertebraes#create"

  get "/vertebraes/:id" => "vertebraes#show", as: :vertebrae

  get "/vertebraes/update/:id" => "vertebraes#update", as: :edit_vertebrae

  patch "/vertebraes/update/:id" => "vertebraes#edit"

  get "/vertebraes/delete/:id" => "vertebraes#delete"

  get "/animals" => "animals#index"

  get "/animals/new" => "animals#new"

  get "/animals/new/:id" => "animals#new"

  post "/animals" => "animals#create"

  get "/animals/:id" => "animals#show", as: :animal

  get "/animals/update/:id" => "animals#update", as: :edit_animal

  post "/animals/update/:id" => "animals#edit"

  get "/animals/delete/:id" => "animals#delete"
  
end
