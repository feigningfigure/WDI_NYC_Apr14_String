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

#SELECT * FROM items
get '/' do
  @items = Item.order(id: :desc)
  erb :index
end

get '/items/new' do

  erb :new
end

get '/items/:id' do

  @item_id = params[:id]
  @item = Item.find(@item_id)
  erb :show
end

#DELETE FROM items WHERE id= params[:id]
get '/items/:id/delete' do

  item_id = params[:id]
  item = Item.find(item_id)
  item.destroy
  redirect "/"

end

get '/items/:id/edit' do

  item_id = params[:id]
  @item = Item.find(item_id)

  erb :edit
end

post '/items/:id' do

  item_id = params[:id]
  item = Item.find(item_id)
  item.name = params[:name]
  item.price = params[:price]
  item.description = params[:description]
  item.quantity = params[:quantity]
  item.save

  redirect "/items/#{item_id}"
end

get '/items/:id/ship' do

  item_id = params[:id]
  @item = Item.find(item_id)

  erb :ship
end

post '/items/:id' do

  item_id = params[:id]
  item = Item.find(item_id)
  item_ship_num = params[:shipment]

 @ship = item.quantity - item_ship_num

  item.name = item.name
  item.price = item.price
  item.description = item.description
  item.quantity = item.ship

  item.save

  redirect "/items/#{item_id}"
end

get '/items/:id/order' do

  item_id = params[:id]
  @item = Item.find(item_id)

  erb :order
end

post '/items/:id' do

  item_id = params[:id]
  item = Item.find(item_id)
  amount = params[:shipment]

 remainder = item.quantity.to_i += amount.to_i

  item.name = item.name
  item.price = item.price
  item.description = item.description
  item.quantity = item.remainder

  item.save

  redirect "/items/#{item_id}"
end
#INSERT INTO items (name,price, description, quantity) VALUES (params[:name], params[:price], params[:description], params[:quantity])
post '/items' do

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




#edit: you need to call .save on it


# each array has one hash, so you can access the first hash and then the first key in the hash
