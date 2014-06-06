Rails.application.routes.draw do
  resources :gladiators
  root :to => "gladiators#index"
end
