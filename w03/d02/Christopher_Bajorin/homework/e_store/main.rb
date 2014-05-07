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
# @conn.exec("INSERT INTO products (name, price, description, quantity) VALUES ('#{name}', '#{price}', '#{description}', '#{quantity}'');")
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
  erb :new
end

get '/items/:id/view' do
  # @item = @conn.exec("SELECT * FROM products WHERE id = params[:id];")
  @item = Item.find(params[:id])
  erb :view
end

get '/items/:id/edit' do
  # @item = @conn.exec("SELECT * FROM products WHERE id = params[:id];")
  @item = Item.find(params[:id])
  erb :edit
end

post '/items/:id/e' do
  Item.update(params[:id], {
  name: params[:name],
  price: params[:price].to_f,
  description: params[:description],
  quantity: params[:quantity].to_i
  })
  redirect '/'
  erb :items
end

get '/items/:id/delete' do
  # @item = @conn.exec("SELECT * FROM products WHERE id = params[:id];")
  Item.find(params[:id]).destroy
  redirect "/"
  "You have deleted #{item_id.to_s}"
  erb :delete
end
