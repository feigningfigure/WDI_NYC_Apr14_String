Rails.application.routes.draw do
# root route
  root to: "boxing_teams#index"

# display all boxing teams
  #get "/boxingteams" => "boxingteams#index"
  resources :boxers
  resources :boxing_teams

# # display one boxing team
#   get "/boxingteams/:id" => "boxingteams#show", as: :boxingteam

# # display the EDIT form for a boxing team
#  # get "/boxingteams/:id/edit" => "boxingteams#edit", as: :edit_boxingteam

# # process an UPDATE or edit to a boxing team record
#   patch "/boxingteams/:id" => "boxingteams#update"

# #renders a NEW boxing team form
#    get "/boxingteams/new" => "boxingteams#new"

# # this processes the form input
#   post "/boxingteams" => "boxingteams#create"


# # post or ADD one or more boxers
#   post "/boxers" => "boxers#create"

# # get one BOXER
#   get "/boxers/:id" => "boxers#index", as: :boxer

# # get EDIT form for boxers
#   get "/boxers/:id/edit" => "boxers#edit", as: :edit_boxer

# # process form data for UPDATE or edit actions
#   patch "/boxers/:id" => "boxers#update"

end
