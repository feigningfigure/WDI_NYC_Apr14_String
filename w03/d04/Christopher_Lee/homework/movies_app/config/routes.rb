Rails.application.routes.draw do

  get "/" => "movies#index"

  post "/search" => "movies#search"



end
