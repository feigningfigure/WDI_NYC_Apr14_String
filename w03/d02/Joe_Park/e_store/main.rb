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

get '/items/:id/view' do
	item_id = params[:id]
	@item = Item.find(item_id)
	erb :view
end


get '/items/:id/edit' do
	item_id = params[:id]
	@edit_item = Item.find(item_id)
	erb :edit
end


get '/items/:id/delete' do
	item_id = params[:id]
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

	Item.create(
		name: name,
		price: price,
		description: description,
		quantity: quantity
	)
	redirect "/"
	end

post '/item/:id/edit' do
	

	name = params[:name]
	price = params[:price]
	description = params[:description]
	quantity = params[:quantity]

	item.save
	redirect "/"
end