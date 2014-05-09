Rails.application.routes.draw do
  
  get "/" => "my_movies#index"

  get "/movie" => "my_movies#index"

  # get "/search" => "my_movies#search"

  get "/all" => "my_movies#all"

end
