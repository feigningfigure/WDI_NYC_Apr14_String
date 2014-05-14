Rails.application.routes.draw do

  root to: 'breweries#index'

  get '/breweries' => 'breweries#index'

  get '/breweries/:id' => 'breweries#show', as: :brewery

  post '/breweries' => 'breweries#create'

  get '/breweries/:id/edit' => 'breweries#edit', as: :edit_brewery

  patch '/breweries/:id' => 'breweries#update'

  # Delete breweries that already have beers? how to delete the beers

  # get '/breweries/:id/delete' => 'breweries#delete'




  post '/beers' => 'beers#create'

  get 'beers/:id' => 'beers#examine', as: :beer

  get 'beers/:id/edit' => 'beers#edit', as: :edit_beer

  patch 'beers/:id' => 'beers#update'

  # create broke my stuff so I deleted it hoping it would work again.


  end
