Rails.application.routes.draw do

resources :items, except: [:new, :edit]

end
