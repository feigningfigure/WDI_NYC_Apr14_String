Rails.application.routes.draw do

  get "/cookbooks" => "cookbooks#index"

  get "/cookbooks/:id" => "cookbooks#show"

end
