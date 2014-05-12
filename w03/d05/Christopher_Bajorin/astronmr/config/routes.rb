Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:


  #DISPLAY list of planets
  get '/planets' => 'planets#index'

  #RETURN a form for creating a new planet
  get '/planets/new' => 'planets#new'

  #CREATE a new planet
  post '/planets' => 'planets#create'

  #DISPLAY a specific planet
  get '/planets/:id/show' => 'planets#show'

  get '/planets/:id/edit' => 'planets#edit'

  post '/planets' => 'planets#update'

  get '/planets/:id/delete' => 'planets#delete'

end
