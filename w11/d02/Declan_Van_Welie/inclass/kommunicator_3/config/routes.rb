Rails.application.routes.draw do

  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)
resources :messages, :comments, except: [:new, :edit]

# resources :comments,  except: [:new, :edit]

end
