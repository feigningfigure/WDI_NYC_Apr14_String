Rails.application.routes.draw do

  root to: "subway_linse#index"

  resources :subway_lines

end
