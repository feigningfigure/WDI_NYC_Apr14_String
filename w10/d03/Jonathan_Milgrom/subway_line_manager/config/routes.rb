Rails.application.routes.draw do
 
  root to: "subway_lines#index"

  resources :subway_lines do 
    resources :stations 
  end

end
