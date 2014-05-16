Rails.application.routes.draw do



  # a resource called artist
  resources :artists#, only: [:index]



  # # another route?
  # resources :octopi

end
