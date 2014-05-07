require 'sinatra'
require 'active_record'
require 'pg'
require 'pry'
require 'httparty'

ActiveRecord::Base.establish_connection({
  database: "amazon_e_store",
  adapter: "postgresql"
})

# MODELS
require_relative "models/item"

# LIBRARIES
# require_relative 'lib/facebook#####'

get '/' do
  @items = Item.all
  erb :index
end

# /items/new - form for a new service
get '/items/new' do
  erb :new
end


post '/items' do
  # processes new post data
  item_name = params[:item_name]
  price = params[:price]
  description = params[:description]
  quantity = params[:quantity]

  Item.create(
    item_name: item_name,
    price: price,
    description: description,
    quantity: quantity
  )
  redirect "/"
end

#VIEW item information
get '/items/:id/view' do
  # show me a single item with given id
  @item_id = params[:id]
  @item = Item.find(@item_id)
  erb :show
end

#DELETE
get '/items/:id/delete' do
  # deletes a single item with given id
  item_id = params[:id]
  item = Item.find(item_id)
  item.destroy
  redirect "/"
end


get '/items/:id/edit' do
#get id to update
@item_id = params[:id]
@item = Item.find(@item_id)
#get new information from the user
#update the new information to the database
# item.update(item_name,price,description,quantity)
erb :edit

end

post '/items/:id/edit' do
  # processes new post data
  item_id = params[:id]
  item = Item.find(item_id)
  item_name = params[:item_name]
  price = params[:price]
  description = params[:description]
  quantity = params[:quantity]

  #to update the database
  item.save!

  # Item.update(
  #   item_name: item_name,
  #   price: price,
  #   description: description,
  #   quantity: quantity
  # )
  redirect "/items/#{item_id}/view"
end
