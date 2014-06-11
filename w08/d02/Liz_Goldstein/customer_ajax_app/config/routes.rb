Rails.application.routes.draw do

Rails.application.routes.draw do
  root "welcome#index"
  resources :customer
end

end
