Rails.application.routes.draw do



  get "/" => "movies#index"




  get "/film" => "movies#film"
    result = OMDB.title(movie)


  get "/film/:id/create" => "movies#create"




  get "/all" => "movies#all"





end
