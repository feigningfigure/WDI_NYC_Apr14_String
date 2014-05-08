require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pg'
require 'pry'

ActiveRecord::Base.establish_connection({
  database: "amazon_e_store",
  adapter: "postgresql"
})

require_relative 'models/item'


#SELECT * FROM items;
get '/' do
	@items = Item.all
	erb :index
end

get '/items/new' do
	erb :new
end

#INSERT INTO items (name, price, description, quantity) VALUES ('#{name}', '#{price}', '#{description}', '#{quantity}');
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

# SELECT * FROM items WHERE id = '#{id}';
get '/items/:id/view' do
	@item_id = params[:id]
	@item = Item.find(@item_id)
	erb :show
end

# SELECT * FROM items WHERE id = '#{id}';
get '/items/:id/edit' do
	@item_id = params[:id]
	@item = Item.find(@item_id)
	erb :edit
end

# UPDATE items SET name = '#{name}', price = '#{price}', description = '#{description}', quantity = '#{quantity}' WHERE id = '#{id}';
post '/items/:id/edit' do
	item_id = params[:id]
	item = Item.find(item_id)
	item.name = params[:name]
	item.price = params[:price]
	item.description = params[:description]
	item.quantity = params[:quantity]	
	item.save
	redirect "/items/#{item_id}/view"
end

# DELETE FROM items WHERE id = '#{id}';
get '/items/:id/delete' do
  item_id = params[:id]
  item = Item.find(item_id)
  item.destroy
  redirect "/"
end
