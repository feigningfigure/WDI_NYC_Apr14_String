Rails.application.routes.draw do

get "/" => "selfies#index"

get "/show" => "selfies#show"

post "/selfies" => "selfies#create"

end
