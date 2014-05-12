Rails.application.routes.draw do

  #redirect to planet index root - same thing as get '/' display list of all planets
  get '/' => 'planets#index'

  get '/new' => 'planets#new'

  post '/planets' => 'planets#create'

  get '/planets/:id' => 'planets#show'

  match ':controller(/:action(/id))', :via => :get

  end
