Rails.application.routes.draw do
  root "people#index"
  resources :people

end

#  people GET    /people(.:format)          people#index
#             POST   /people(.:format)          people#create
#  new_person GET    /people/new(.:format)      people#new
# edit_person GET    /people/:id/edit(.:format) people#edit
#      person GET    /people/:id(.:format)      people#show
#             PATCH  /people/:id(.:format)      people#update
#             PUT    /people/:id(.:format)      people#update
#             DELETE /people/:id(.:format)      people#destroy