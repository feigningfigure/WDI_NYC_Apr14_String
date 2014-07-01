Rails.application.routes.draw do
  resources :penguins, except: [:new, :edit]
end
