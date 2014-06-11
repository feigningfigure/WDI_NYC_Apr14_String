Rails.application.routes.draw do
    root "welcome#index"
    resources :customer
end

#   Prefix Verb   URI Pattern                  Controller#Action
#           root GET    /                            welcome#index
# customer_index GET    /customer(.:format)          customer#index
#                POST   /customer(.:format)          customer#create
#   new_customer GET    /customer/new(.:format)      customer#new
#  edit_customer GET    /customer/:id/edit(.:format) customer#edit
#       customer GET    /customer/:id(.:format)      customer#show
#                PATCH  /customer/:id(.:format)      customer#update
#                PUT    /customer/:id(.:format)      customer#update
#                DELETE /customer/:id(.:format)      customer#destroy
