require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pg'
require 'pry'
require 'httparty'

# establishes connection with db
ActiveRecord::Base.establish_connection({
  database: "store1",
  adapter: "postgresql"
})

# MODELS
require_relative './models/item.rb'

get '/' do
  @items = Item.all
  erb :index
end

# routes to the new service page with the form on it
get '/items/new' do
  erb :new
end

# routes to the view page
get '/items/:id/view' do
  erb :view
end

# routes to the edit item page
get '/items/:id/edit' do
  erb :edit
end

get '/items/:id/delete' do
  erb :edit
end


