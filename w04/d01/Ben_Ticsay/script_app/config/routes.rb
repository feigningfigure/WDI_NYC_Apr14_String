Rails.application.routes.draw do


  # root route
  root to: "scenes#index"


  # display all scenes
  get "/scenes" => "scenes#index"


  # display one scene
  get "/scenes/:id" => "scenes#show", as: :scene

  # display the EDIT form for a scene
  get "/scenes/:id/edit" => "scenes#edit", as: :edit_scene

  # process an UPDATE or edit to a scene record
  patch "/scenes/:id" => "scenes#update"

  # this processes the form input
  post "/scenes" => "scenes#create"





  # post or ADD one or more dialogues
  post "/dialogues" => "dialogues#create"

  # get one dialogue
  get "/dialogues/:id" => "dialogues#index", as: :dialogue

  # get EDIT form for dialogues
  get "/dialogues/:id/edit" => "dialogues#edit", as: :edit_dialogue

  # process form data for UPDATE or edit actions
  patch "/dialogues/:id" => "dialogues#update"


end
