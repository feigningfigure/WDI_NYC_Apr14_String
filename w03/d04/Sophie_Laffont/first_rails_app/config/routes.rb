Rails.application.routes.draw do

  # HTTPMETHOD PATH => "CONTROLLERNAME#ACTIONNAME"
  get "/" => "posts#index"

  get "/greeting/:greeting" => "posts#greeting"

end
