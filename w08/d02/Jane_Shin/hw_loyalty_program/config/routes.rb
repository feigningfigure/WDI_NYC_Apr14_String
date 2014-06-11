Rails.application.routes.draw do
	root "welcome#index"
  resources :customers
  
#          Prefix Verb   URI Pattern                   Controller#Action
#     customers GET    /customers(.:format)          customers#index
#               POST   /customers(.:format)          customers#create
#  new_customer GET    /customers/new(.:format)      customers#new
# edit_customer GET    /customers/:id/edit(.:format) customers#edit
#      customer GET    /customers/:id(.:format)      customers#show
#               PATCH  /customers/:id(.:format)      customers#update
#               PUT    /customers/:id(.:format)      customers#update
#               DELETE /customers/:id(.:format)      customers#destroy


  
end
