Rails.application.routes.draw do

  get "/" => "movies#index"

  post "/create" => "movies#create"

end
