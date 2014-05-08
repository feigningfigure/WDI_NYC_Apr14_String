require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'pg'
require 'httparty'
require 'active_record'
require relative ‘models/item’

# establishes connection once and for all
ActiveRecord::Base.establish_connection({
  database: "amazon_e_store",
  adapter: "postgresql"
})

#list all items
get '/' do
  @items = Item.all
  erb :index
end

# SHOULD BE POST NOT GET CORRECT?
# NEED form for a new service
post '/items/new' do
  # processes new post data
  id = params[:id]
  name = params[:name]
  price = params[:price]
  description = params[:description]
  quantity = params[:quantity]

  Item.create({
    name: name,
    price: price,
    description: description,
    quantity: quantity
  })
  redirect "/"
end

# show single item with given id
get '/items/:id/show' do
  @item_id = params[:id]
  @item = Item.find(@item_id)
  erb :show
end

#edit item information
get '/items/:id/edit' do
  #first must retrieve item given id
  @item_id = params[:id]
  @item = Item.find(@item_id)

  id = params[:id]
  name = params[:name]
  price = params[:price]
  description = params[:description]
  quantity = params[:quantity]

  Item.update({
    id: id,
    name: name,
    price: price,
    description: description,
    quantity: quantity
    })
  redirect "/"
end


get '/items/:id/delete' do
  # deletes a single post with given id
  item_id = params[:id]
  item = Item.find(item_id)
  item.destroy
  redirect "/"
  # "You have deleted #{item_id.to_s}"
end
