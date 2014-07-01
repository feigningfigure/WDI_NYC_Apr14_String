Rails.application.routes.draw do
  resources :posts, except: [:new, :edit]
end

 # posts GET    /posts(.:format)     posts#index
 #       POST   /posts(.:format)     posts#create
 #  post GET    /posts/:id(.:format) posts#show
 #       PATCH  /posts/:id(.:format) posts#update
 #       PUT    /posts/:id(.:format) posts#update
 #       DELETE /posts/:id(.:format) posts#destroy
