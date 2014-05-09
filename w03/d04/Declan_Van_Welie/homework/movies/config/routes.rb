Rails.application.routes.draw do

get '/' => 'movies#index'

get '/create' => 'movies#index'

post '/movie' => 'movies#create'

post '/show' => 'movies#show'

end

