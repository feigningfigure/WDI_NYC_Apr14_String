SmoketopApp::Application.routes.draw do
  # root "beasts#welcome"
  root 'beasts#index'

  get '/beasts' => 'beasts#index'

  post '/beasts' => 'beasts#create'

  delete '/beasts/:id' => 'beasts#destroy'
  # post "/" => "beasts#create"
  # get "/about" => "beasts#about"
end

