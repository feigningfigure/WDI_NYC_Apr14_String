Rails.application.routes.draw do

  root to: 'practice#index'

  resources :practice

end
