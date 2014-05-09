Rails.application.routes.draw do

  get '/' => "movies#index"

  get '/movies/:id/show' => "movies#show"

  post '/movies/new' => "movies#new"

  get '/movies/all' => "movies#all"


end
