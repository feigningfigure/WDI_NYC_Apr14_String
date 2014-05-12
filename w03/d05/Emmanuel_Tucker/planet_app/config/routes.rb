Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
get "/planets" => "planets#index"
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
get "/planets/new" => "planets#new"
  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
get "/planets" => "planets#create"

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
get "/planets/:id" => "planets#show"
  end
