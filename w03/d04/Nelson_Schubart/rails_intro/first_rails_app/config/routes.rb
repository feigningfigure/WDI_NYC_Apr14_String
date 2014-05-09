Rails.application.routes.draw do

  get "/" => "posts#index"

  get "/greeting/:greeting" => "posts#greeting"
end


