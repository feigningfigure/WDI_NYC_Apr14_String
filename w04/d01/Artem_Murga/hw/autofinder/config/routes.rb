# == Route Map (Updated 2014-05-13 19:28)
#
#           Prefix Verb URI Pattern                 Controller#Action
#             root GET  /                           makes#index
#            makes GET  /makes(.:format)            makes#index
#                  GET  /makes/:id(.:format)        makes#show
#             make GET  /makes/:id/edit(.:format)   makes#edit
#                  POST /makes(.:format)            makes#create
# makes_create_new POST /makes/create/new(.:format) makes#new
#

Rails.application.routes.draw do
  
  root to: "makes#index"

  get '/makes' => "makes#index"

  get '/makes/:id' => "makes#show"

  get "/makes/:id/edit" => "makes#edit", :as => :make


  post '/makes' => "makes#create"

  post '/makes/create/new' => "makes#new"

  patch "/makes/:id/edit" => "makes#update"



  post "/models/:id" => "models#create"

  get "/models/:id" => "models#index", as: :model

  get "/models/:id/edit" => "models#edit", as: :edit_model

  patch "/models/:id" => "models#update"
  


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
