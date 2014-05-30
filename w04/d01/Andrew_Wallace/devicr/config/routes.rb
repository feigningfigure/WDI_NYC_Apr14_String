Rails.application.routes.draw do

#ROOT INDEX
root to: "users#index"

#INDEX OF USERS
get '/users' => 'users#index', as: :users

#GENERATE NEW USER FORM
get 'users/new' => 'users#new', as: :new_user

#PROCESS NEW USER ENTRY
post '/users' => 'users#create'

#EDIT/PATCH USERS
get '/users/:id/edit' => 'users#edit', as: :edit_user
patch '/users/:id' => 'users#update'


#SHOW INDIVIDUAL USER
get '/users/:id' => 'users#show', as: :user

#DELETE USER
delete '/users/:id' => 'users#destroy'

#-------DEVICE ROUTES---------#

#INDEX OF DEVICES
get '/devices' => 'devices#index', as: :devices

#GENERATE NEW DEVICE FORM
get 'devices/new' => 'devices#new', as: :new_device

#PROCESS NEW DEVICE ENTRY
post '/devices' => 'devices#create'

#EDIT/PATCH DEVICES
get '/devices/:id/edit' => 'devices#edit', as: :edit_device
patch '/devices/:id' => 'devices#update'


#SHOW INDIVIDUAL DEVICE
get '/devices/:id' => 'devices#show', as: :device

#DELETE DEVICE
delete '/devices/:id' => 'devices#destroy'

end
