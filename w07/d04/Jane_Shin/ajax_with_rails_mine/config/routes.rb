Rails.application.routes.draw do

  root to: 'tasks#index'

  resources :tasks
 
end

# ======== gotta rake routes in terminal to see this ============
#    Prefix Verb   URI Pattern               Controller#Action
#      root GET    /                         tasks#index
#     tasks GET    /tasks(.:format)          tasks#index
#           POST   /tasks(.:format)          tasks#create
#  new_task GET    /tasks/new(.:format)      tasks#new
# edit_task GET    /tasks/:id/edit(.:format) tasks#edit
#      task GET    /tasks/:id(.:format)      tasks#show
#           PATCH  /tasks/:id(.:format)      tasks#update
#           PUT    /tasks/:id(.:format)      tasks#update
#           DELETE /tasks/:id(.:format)      tasks#destroy
