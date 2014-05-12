# == Route Map (Updated 2014-05-10 15:12)
#
#      Prefix Verb URI Pattern            Controller#Action
#        root GET  /                      planets#index
#     planets GET  /planets(.:format)     planets#index
# planets_new GET  /planets/new(.:format) planets#new
#             POST /planets(.:format)     planets#create
#             GET  /planets/:id(.:format) planets#show
#

Rails.application.routes.draw do


  root "planets#main"

  
  get '/planets' => "planets#index"

  get '/planets/new' => "planets#new"

  post '/planets/' => "planets#create"

  get '/planets/:id' => "planets#show"

  get '/moons' => "moons#index"

  get '/moons/new' => "moons#new"

### experiments 

  # post '/planets/delete' => "planets#delete"

  # get '/planets/find' => "planets#suchen"


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
