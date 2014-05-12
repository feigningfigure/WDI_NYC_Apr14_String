Rails.application.routes.draw do


  root to: "countries#index"

  get "/countries" => "countries#index"

  get "/countries/:id" => "countries#show"






end
