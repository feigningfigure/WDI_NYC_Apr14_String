Rails.application.routes.draw do

root to: "gladiators#index"

resources :gladiators

end
