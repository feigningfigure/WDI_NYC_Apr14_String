Rails.application.routes.draw do

  #web root is no logner welcome page
  #web root looks in controllers for a file called tasks__ 
  #web root looks for a method called #___
  root to: 'tasks#index'

  resources :tasks

end
