Rails.application.routes.draw do
#REQUEST     CONTROLLER#METHOD


# INDEX PAGE
  get '/' => "movies#index" do
    url = http://www.omdbapi.com/?
  end

# HTML TABLE DISPLAYING ALL DB INFO
  get '/all' => "movies#all"

# GET SEARCH PAGE
  get '/search' => "movies#search"

# PROCESS
  post 'process' => "movies#process"

# GET INDIVIDUAL RESULT
  get '/view' => "movies#view"


end
