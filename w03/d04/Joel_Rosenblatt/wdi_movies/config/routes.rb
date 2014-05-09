Rails.application.routes.draw do

  get "/" => "posts#index"

  get "/info" => "posts#info"

  get "/library" => "posts#library"
end
