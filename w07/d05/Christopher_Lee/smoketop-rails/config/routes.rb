SmoketopApp::Application.routes.draw do
  get "sessions/new"
  get "users/new"
  # root "beasts#welcome"
  #root 'beasts#index'

  get '/beasts' => 'beasts#index'

  post '/beasts' => 'beasts#create'

  delete '/beasts/:id' => 'beasts#destroy'
  # post "/" => "beasts#create"
  # get "/about" => "beasts#about"

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  root :to => "users#new"
  resources :users
  resources :sessions
end

