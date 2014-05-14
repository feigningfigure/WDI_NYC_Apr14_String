Rails.application.routes.draw do
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



#### SUPERTEAMS

  get '/' => 'superteams#index'
  get '/superteams' => 'superteams#index',                  as: :superteams

  get '/superteams/new' => 'superteams#new',                as: :new_superteam       #QUESTION: WHY WON'T THIS WORK - SEE EXAMPLES IN DOC
  post '/superteams/' => 'superteams#create' 

  get '/superteams/:id/edit' => 'superteams#edit',          as: :edit_superteam
  patch '/superteams/:id' => 'superteams#update'                                    #QUSTION: Difference between patch and put? 
  put '/superteams/:id' => 'superteams#update'

  get '/superteams/:id' => 'superteams#show',               as: :superteam  #singular
  delete '/superteams/:id/destroy' => 'superteams#destroy' 

  



#### SUPERHEROES

  get '/' => 'superheroes#index'
  get '/superheroes' => 'superheroes#index',                as: :superheroes

  get '/superheroes/new' => 'superheroes#new',              as: :new_superhero
  post '/superheroes/' => 'superheroes#create' 

  get '/superheroes/:id/edit' => 'superheroes#edit',        as: :edit_superhero
  patch '/superheroes/:id' => 'superheroes#update'                            
  put '/superheroes/:id' => 'superheroes#update'

  get '/superheroes/:id' => 'superheroes#show',             as: :superhero
  delete '/superheroes/:id/destroy' => 'superheroes#destroy' 




end
