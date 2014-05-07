require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection({
  database: "e_store",
  adapter: "postgresql"
})

require_relative 'models/item'


get '/' do
  @items = Item.all
  erb :index
end

post '/items' do

  name = params[:name]
  price = params[:price].to_f
  description = params[:description]
  quantity = params[:quantity].to_i

  Item.create(
    name: name,
    price: price,
    description: description,
    quantity: quantity
  )
  redirect '/'
  erb :items
end



get '/items/new' do
  # just a form
  erb :new
end



get '/items/:id/view' do
  # show me an item by id
  @item_id = params[:id]
  @item = Item.find(@item_id)

  erb :view
end



get '/items/:id/edit' do
  @item_id = params[:id]
  @item = Item.find(@item_id)

  erb :edit
end

post '/items/:id/e' do
  item_id = params[:id]
  name = params[:name]
  price = params[:price].to_f
  description = params[:description]
  quantity = params[:quantity].to_i

  Item.update(item_id, {name: name})
  Item.update(item_id, {price: price})
  Item.update(item_id, {description: description})
  Item.update(item_id, {quantity: quantity})

  redirect '/'
  erb :items
end

get '/items/:id/delete' do

  item_id = params[:id]
  item = Item.find(item_id)
  item.destroy
  redirect "/"
  "You have deleted #{item_id.to_s}"
  erb :delete
end
