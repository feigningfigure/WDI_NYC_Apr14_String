SmoketopApp::Application.routes.draw do
  root "beasts#welcome"

  get "/beasts" => "beasts#index"

  post "/beasts?params[:diet]" => "beasts#index"

  get "/about" => "beasts#about"
end
