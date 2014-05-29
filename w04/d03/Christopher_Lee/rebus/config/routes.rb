Rails.application.routes.draw do
  root :to => 'sentences#index'

  post "/sentences/create" => "sentences#create"
end
