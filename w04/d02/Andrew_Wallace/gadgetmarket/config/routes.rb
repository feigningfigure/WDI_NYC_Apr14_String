Rails.application.routes.draw do

#ROOT INDEX
 root to: "companies#index"

#INDEX OF USERS
get '/companies' => 'companies#index', as: :companies

#GENERATE NEW USER FORM
get '/companies/new' => 'companies#new', as: :new_company

#PROCESS NEW USER ENTRY
post '/companies' => 'companies#create'

#EDIT/PATCH USERS
get '/companies/:id/edit' => 'companies#edit', as: :edit_company
patch '/companies/:id' => 'companies#update'


#SHOW INDIVIDUAL USER
get '/companies/:id' => 'companies#show', as: :company

#DELETE USER
delete '/companies/:id' => 'companies#destroy'

#-------DEVICE ROUTES---------#

#INDEX OF DEVICES
get '/products' => 'products#index', as: :products

#GENERATE NEW DEVICE FORM
get '/products/new' => 'products#new', as: :new_product

#PROCESS NEW DEVICE ENTRY
post '/products' => 'products#create'

#EDIT/PATCH DEVICES
get '/products/:id/edit' => 'products#edit', as: :edit_product
patch '/products/:id' => 'products#update'


#SHOW INDIVIDUAL DEVICE
get '/products/:id' => 'products#show', as: :product

#DELETE DEVICE
delete '/products/:id' => 'products#destroy'

end
