require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pg'
require 'pry'
require 'httparty'


ActiveRecord::Base.establish_connection({
  database: "amazon_e_store",
  adapter: "postgresql"
})

require_relative 'models/item'

get '/' do
  @items = Item.all
  erb :index
end

get '/items/new' do
  # shows a form to input new item
  erb :new
end

# get '/items/:id' do
#   # show me a single item with given id
#   @item_id = params[:id]
#   @item = Item.find(@item_id)
#   erb :show
# end

get '/items/:id/view' do
  @item_id = params[:id]
  @item = Item.find(@item_id)
  erb :show
end


get '/items/:id/edit' do
  @item_id = params[:id]
  @item = Item.update(@item_id)

  erb :edit
end



get '/items/:id/delete' do
  # deletes a single item with given id
  item_id = params[:id]
  item = Item.find(item_id)
  item.destroy
  redirect "/"
  # "You have deleted #{item_id.to_s}"
end

get '/items' do
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

