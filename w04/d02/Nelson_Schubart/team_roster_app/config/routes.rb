Rails.application.routes.draw do

  # root route
  root to: "teams#index"

  # display all teams
  get "/teams" => "teams#index"

  # display one team
  get "/teams/:id" => "teams#show", as: :team

  # display the EDIT form for a team
  get "/teams/:id/edit" => "teams#edit", as: :edit_teams

  # process an UPDATE or edit to a teams record
  patch "/teams/:id" => "teams#update"

  # renders a NEW teams form
  # get "/teams/new" => "teams#new"

  # this processes the form input
  post "/teams" => "teams#create"

  # for demo purposes
  # get "/secret" => "teams#secret_code"

  # post or ADD one or more recipes
  post "/players" => "players#create"

  # get one RECIPE
  get "/players/:id" => "players#show", as: :player

  # get EDIT form for recipes
  get "/players/:id/edit" => "players#edit", as: :edit_player

  # process form data for UPDATE or edit actions
  patch "/players/:id" => "players#update"
end

