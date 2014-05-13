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

end
