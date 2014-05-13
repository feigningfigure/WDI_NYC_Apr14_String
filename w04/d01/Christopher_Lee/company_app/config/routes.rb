Rails.application.routes.draw do

  root to: "companies#index"

  # display single company
  get "/companies/:id" => "companies#show", as: :company

    # this processes the form input
  post "/companies" => "companies#create"

end
