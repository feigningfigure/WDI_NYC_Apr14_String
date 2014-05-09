Rails.application.routes.draw do

#HTTP=VERB + PATH + => "CONTROLLER NAME#METHODNAME (FORMULA FOR WRITING A ROUTE)"

  get "/" => "home#index"

get "/posts/new" => "cats#post"
  #GET POSTS NEW
end
