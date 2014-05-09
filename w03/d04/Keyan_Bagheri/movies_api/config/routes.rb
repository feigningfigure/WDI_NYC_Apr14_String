Rails.application.routes.draw do

get '/' => "movies#index"

get '/movies/:movie/view' => "movies#view"

get "movies/all"  =>  "movies#all"
  
post "movies/new" => "movies#new"
end
