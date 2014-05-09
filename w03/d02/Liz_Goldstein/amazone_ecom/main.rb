require 'pg'
require 'active_record'
require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'

require_relative 'models/item'

ActiveRecord::Base.establish_connection({
  database: "amazon_e_store",
  adapter: "postgresql"
})

get '/' do

  @items = Item.all
  erb :index
end

get '/items/new' do
  erb :new
end

get '/items/:id' do

  @item_id = params[:id]
  @name = params[:name]
  @price = params[:price]
  @description = params[:description]
  @quantity = params[:quantity]
# result = @conn.exec("SELECT * FROM products WHERE id = '#{query}';")
  @item = Item.find(@item_id)

  erb :show
end

post '/items/:id' do

  item_id = params[:id]
# result = @conn.exec("SELECT * FROM products WHERE id = '#{query}';")
  item = Item.find(item_id)
  item.name = params[:name]
  item.price = params[:price]
  item.description = params[:description]
  item.save

  redirect "/items/#{item_id}"
end

get '/items/:id/delete' do
  item_id = params[:id]
  item = Item.find(item_id)
  # @conn.exec("DELETE FROM products WHERE id = '#{id}'")
  item.destroy
  redirect "/"
end

get '/items/:id/edit' do
  item_id = params[:id]
  @item = Item.find(item_id)

  erb :edit
end

get '/items/:id/quantity' do
  item_id = params[:id]
  @item = Item.find(item_id)

  erb :quantity
end

post '/items/:id/quantity' do
  item_id = params[:id]
  item = Item.find(item_id)
  # @conn.exec("UPDATE products SET quantity = '#{total}' WHERE id = '#{query}';")
  item.quantity = (item.quantity.to_i + params[:quantity].to_i)
  item.save

  redirect "/items/#{item_id}"
end

post '/items' do
  name = params[:name]
  price = params[:price]
  description = params[:description]
  quantity = 0
# @conn.exec("INSERT INTO products (name, price, description) VALUES ('#{name}', '#{price}', '#{description}');")
  Item.create(
    name: name,
    price: price,
    description: description,
    quantity: quantity
    )
  redirect "/"
end



  # processes new post data
  # title = params[:title]
  # body = params[:body]
  # author = params[:author]

  # Post.create(
  #   title: title,
  #   body: body,
  #   author: author
  # )
  # redirect "/"

