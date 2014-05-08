require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pg'
require 'pry'
# establishes connection once and for all...
ActiveRecord::Base.establish_connection({
  database: "amazone_e_store",
  adapter: "postgresql"
})

# MODELS
require_relative 'models/item'



get '/' do 
	@items = Item.all
	erb :index
end


get '/items/new' do

	erb :new
end

get '/items/:id/show' do
	item_id = params[:id]
	# SELECT * FROM items WHERE id = '#{item_id}';
	@item = Item.find(item_id)
	erb :show
end


get '/items/:id/edit' do
	item_id = params[:id]
	# SELECT * FROM items WHERE id = '#{item_id}';
	@edit_item = Item.find(item_id)
	erb :edit
end


get '/items/:id/delete' do
	item_id = params[:id]
	# SELECT * FROM items WHERE id = '#{item_id}';
	item = Item.find(item_id)
	item.destroy
	redirect "/"
end

post '/items' do
  # processes new post data
	name = params[:name]
	price = params[:price]
	description = params[:description]
	quantity = params[:quantity]

	# INSERT INTO products (name, price, description, quantity) VALUES('#{name}', '#{price}', '#{description}', '#{quantity}');
	Item.create(
		name: name,
		price: price,
		description: description,
		quantity: quantity
	)
	redirect "/"
	end

post '/items/:id/edit' do
	edit_item_id = params[:id]
	# SELECT * FROM items WHERE id = '#{edit_item_id}';
	update_item = Item.find(edit_item_id)


	update_item.name = params[:name]
	update_item.price = params[:price]
	update_item.description = params[:description]
	update_item.quantity = params[:quantity]
	update_item.save
	redirect "/"
end