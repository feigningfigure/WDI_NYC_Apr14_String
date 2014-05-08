require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pg'
require 'pry'
require 'httparty'

# establishes connection once and for all...
ActiveRecord::Base.establish_connection({
  database: "amazone",
  adapter: "postgresql"
})

# MODELS
require_relative 'models/item.rb'

# LIBRARIES



get '/' do
  @items = Item.all
  erb :index
end

get '/items/new' do
  # shows a form to input new item
  erb :new
end

get '/items/:id/view' do
  # show me a single item with given id
  item_id = params[:id] 
  @item = Item.find(item_id)
  erb :show
end

get '/items/:id/edit' do
  # shows a form to edit item
  item_id = params[:id] 
  @item = Item.find(item_id)
  erb :edit


end

# post '/items/:id/update'



# end


post '/items' do
  # processes new item data
  name = params[:name]
  price = params[:price]
  description = params[:description]
  quantity = params[:quantity]
  Item.create(
    name: name,
    price: price,
    description: description,
    quantity: quantity
  )
  redirect "/"
end






post '/items/:id/update' do
  # processes new item data
  id = params[:id] 
  item = Item.find(id)

  item.name = params[:name]
  item.price = params[:price]
  item.description = params[:description]
  item.quantity = params[:quantity]
  item.save!
  redirect "/"
end


get '/items/:id/delete' do
  # deletes a single item with given id
  item_id = params[:id]
  item = Item.find(item_id)
  item.destroy
  redirect "/"
end

# get '/items/:id/edit' do

#   erb :edit

#   # "You have deleted #{item_id.to_s}"
# end

# get '/items' do
#   # processes new item data
#   name = params[:name]
#   price = params[:price]
#   description = params[:description]
#   quantity = params[:quantity]

#   Item.create(
#     name: name,
#     price: price,
#     description: description,
#     quantity: quantity
#   )
#   redirect "/"
# end


