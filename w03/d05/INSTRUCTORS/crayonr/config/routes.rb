Rails.application.routes.draw do

    # define your routes here

    # ALL crayons path
    get "/crayons" => "crayons#index"

    # NEW crayon path
    get "/crayons/new" => "crayons#new"

    # CREATE crayon path
    post "/crayons" => "crayons#create"




end
