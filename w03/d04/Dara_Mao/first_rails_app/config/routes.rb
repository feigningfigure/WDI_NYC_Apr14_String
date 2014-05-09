Rails.application.routes.draw do

  # HTTP VERB  PATH  =>  "CONTROLLERNAME#METHODNAME"
  get "/" => "posts#index"

  get '/greeting/:greeting' => 'posts#greeting'

end
