require 'pg'
require 'rainbow'
require 'active_record'
require 'pry'
require 'sinatra'
require 'sinatra/reloader'

ActiveRecord::Base.establish_connection({
database: "products_db",
adapter: "postgresql"
})

require_relative 'models/product'

get '/' do
  # ("SELECT * FROM products;")
  @products = Product.all
  erb :index
end

get '/product/new' do
  # shows a form to input new product
  erb :new
end

get '/product/:id/view' do
  # show me a single product with given id
  @product_id = params[:id]
  @product = Product.find(@product_id)
  erb :view
end

get '/product/:id/order' do
  # deletes a single product with given id
  product_id = params[:id]
  @product = Product.find(product_id)
  erb :order
end

post '/product/:id/order' do
  # processes new product data
  id = params[:id]
  product = Product.find(id)
  order = params[:order].to_i
  beginning_total = product.quantity.to_i
  ending_total = beginning_total + order
  # ("UPDATE products SET quantity = '#{product['quantity'].to_i + order}' WHERE id = '#{id}';")
  product.quantity = ending_total
  product.save!
  redirect "/"
end

get '/product/:id/ship' do
  # deletes a single product with given id
  product_id = params[:id]
  # @conn.exec("UPDATE products SET quantity = '0' WHERE id = '#{id}';")
  @product = Product.find(product_id)
  erb :ship
end

post '/product/:id/ship' do
  # processes new product data
  id = params[:id]
  # @conn.exec("UPDATE products SET quantity = '0' WHERE id = '#{id}';")
  product = Product.find(id)
  shipment = params[:ship].to_i
  beginning_total = product.quantity.to_i
  ending_total = beginning_total - shipment
  # ("UPDATE products SET quantity = '#{product['quantity'].to_i - order}' WHERE id = '#{id}';")
  product.quantity = ending_total
  product.save!
  redirect "/"
end

get '/product/:id/delete' do
  # deletes a single product with given id
  product_id = params[:id]
  # @conn.exec("UPDATE products SET quantity = '0' WHERE id = '#{id}';")
  product = Product.find(product_id)
  # @conn.exec("DELETE FROM products WHERE id = '#{id}';")
  product.destroy
  redirect "/"
  "You have deleted #{product_id.to_s}"
end

get '/product/:id/edit' do
  # deletes a single product with given id
  product_id = params[:id]
  @product = Product.find(product_id)
  erb :edit
end

post '/product/:id/edit' do
  # processes new product data
  id = params[:id]
  # @conn.exec("UPDATE products SET quantity = '0' WHERE id = '#{id}';")
  product = Product.find(id)
  product.name = params[:name]
  product.price = params[:price]
  product.description = params[:description]
  product.quantity = params[:quantity]
  # ("UPDATE products SET price = '#{variable}' WHERE id = '#{id}';")
  product.save!
  redirect "/"
end

post '/product' do
  # processes new product data
  name = params[:name]
  price = params[:price]
  description = params[:description]
  quantity = params[:quantity]

  # ("INSERT INTO products (name, price, description) VALUES ('#{name}', #{price}, '#{description}');")
  Product.create(
    name: name,
    price: price,
    description: description,
    quantity: quantity
  )
  redirect "/"
end