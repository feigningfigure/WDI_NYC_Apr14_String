Rails.application.routes.draw do
      # define your routes here

    #Index route
    get "/" => 'planets#index'

    # ALL planets path
    get "/planets" => 'planets#all'

    # Return FORM for creating a new planet
    get "/planets/new" => 'planets#new'

    # Create a NEW planet
    post "/planets" => 'planets#create'

    # Display a specific planet
    get "/planets/:id" => 'planets#show'

end
