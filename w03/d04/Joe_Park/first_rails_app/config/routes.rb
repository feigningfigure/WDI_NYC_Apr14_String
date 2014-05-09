Rails.application.routes.draw do
  
  #HTTP-VERB + Path + -> + "CONTROLLERNAME#ACTIONNAME"
  get "/" => "posts#index"

  get "/greeting/:greeting" => "posts#greeting"

end
