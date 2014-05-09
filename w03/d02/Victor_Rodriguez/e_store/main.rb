require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pg'
require 'pry'


ActiveRecord::Base.establish_connection({
  database: "db",
  adapter: "postgresql"
})

# MODELS
require_relative 'models/items'


get '/items' do
  @items = Items.all
 erb :index
end

get '/items/new' do
  #shows a form to input new item
 erb :new
end

get '/items/:id/view' do
  # show me a single post with given id
  @items_id = params[:id]
  @items = Items.find(@items_id)
  erb :show
end

#get '/items/:id/delete' do
 # deletes a single post with given id
 # items_id = params[:id]
 # item = Items.find(items_id)
 # Items.destroy
 # redirect "/"
 # "You have deleted #{items_id.to_s}"
#end



