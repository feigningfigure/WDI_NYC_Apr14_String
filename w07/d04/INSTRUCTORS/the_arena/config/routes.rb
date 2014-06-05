Rails.application.routes.draw do

  root to: "gladiators#index"

  resources :gladiators


  # What resources does; see: http://guides.rubyonrails.org/v3.2.13/routing.html
  # get "/gladiators" => "gladiators#index"
  # get "/gladiators/new" => "gladiators#new"
  # get "/gladiators/:id" => "gladiators#show"

  # Rails 4 now uses PATCH as the primary HTTP verb for updates
  # patch "/gladiators/:id" => "gladiators#update"
  # post "/gladiators" => "gladiators#create"
  # get "/gladiators/:id/edit" => "gladiators#edit"
  # delete "/gladiators/:id" => "gladiators#delete"

end
