Rails.application.routes.draw do

  root to: "companies#index"

  # display single company
  get "/companies/:id" => "companies#show", as: :company

    # this processes the form input
  post "/companies" => "companies#create"

  # display the EDIT form for a company
  get "/companies/:id/edit" => "companies#edit", as: :edit_company

  # update
  patch "/companies/:id" => "companies#update"

  # products
  post "/products" => "products#create"

  # product edit
  get "/products/:id/edit" => "products#edit", as: :edit_product

  # UPDATE
  patch "/products/:id" => "products#update"

  get "/products/:id/new/" => "products#new"

  ## add a country to a product

  post "/products/add_distributor" => "products#add_distributor"


  ### Countries ###

  get '/countries/new' => "countries#new"

  post '/countries' => "countries#create"


end
