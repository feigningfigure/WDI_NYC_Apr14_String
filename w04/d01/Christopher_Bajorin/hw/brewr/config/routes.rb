Rails.application.routes.draw do

  get '/breweries' => 'breweries#index'

  get '/breweries/:id' => 'breweries#show', as: :brewery

  post '/breweries' => 'breweries#create'

  get '/breweries/:id/edit' => 'breweries#edit', as: :edit_brewery

  patch '/breweries/:id' => 'breweries#update'

  # Delete breweries that already have recipes? how to delete the recipes
  get '/breweries/:id/delete' => 'breweries#delete'





  post '/beers' => 'beers#create'

  get 'beers/:id' => 'beers#index', as: :beer

  get 'beers/:id/edit' => 'beers#edit', as: :edit_beer

  patch 'beers/:id' => 'beers#update'

  end
