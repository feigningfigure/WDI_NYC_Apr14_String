Rails.application.routes.draw do

root 'photos#index'

get '/index' => 'photos#index'

get '/all' => 'photos#all'

end
