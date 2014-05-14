Rails.application.routes.draw do


  root to: "countries#index"

  get "/countries" => "countries#index"

  get "/countries/:id" => "countries#show", as: :country

  get "/countries/:id/edit" => "countries#edit", as: :edit_country

  patch "/countries/:id" => "countries#update"

  post "/countries" => "countries#create"



  post "/oilfields" => "oilfields#create"

  get "/oilfields/:id" => "oilfields#show", as: :oilfield

  get "/oilfields/:id/edit" => "oilfields#edit", as: :edit_oilfield

  patch "/oilfields/:id" => "oilfields#update"


end
