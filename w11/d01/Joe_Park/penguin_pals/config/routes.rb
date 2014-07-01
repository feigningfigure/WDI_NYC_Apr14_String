Rails.application.routes.draw do

  resources :penguins, except: [:new, :edit]

#   Prefix Verb   URI Pattern             Controller#Action
# penguins GET    /penguins(.:format)     penguins#index
#          POST   /penguins(.:format)     penguins#create
#  penguin GET    /penguins/:id(.:format) penguins#show
#          PATCH  /penguins/:id(.:format) penguins#update
#          PUT    /penguins/:id(.:format) penguins#update
#          DELETE /penguins/:id(.:format) penguins#destroy
  
end
