Rails.application.routes.draw do

root to: "continents#index"

get '/' => "continents#index"

get '/continents' => "continents#index"

get '/continents/:id' => "continents#show", as: :continent

post 'continents' => "continents#create"

get '/continents/:id/edit' => "continents#edit", as: :edit_continent

patch '/continents/:id' => "continents#update"

post '/countries' => "countries#create"

get '/countries/:id' => "countries#index", as: :country

get '/countries/:id/edit' => "countries#edit", as: :country_edit

patch '/countries/:id' => "countries#update"
  
end
