require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pg'
require 'pry'
require 'httparty'

# MODELS
require_relative 'models/item'

# establishes connection once and for all...
ActiveRecord::Base.establish_connection({
  database: "amazon_e_store",
  adapter: "postgresql"
})

get '/items/new' do
  # shows a form to input new item
  erb :new
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
   redirect '/'
end

get '/' do
  @item = Item.all
  erb :index
end

get '/items/:id/view' do

	id = params[:id]
	@item = Item.find(id)

	erb :show


end 

get '/items/:id/edit' do

	id = params[:id]
	@item = Item.find(id)
	erb :edit

end 

get '/items/:id/delete' do

	id = params[:id]
	Item.delete(id)

	redirect '/'
end

post '/items/:id/edit/:column' do

	id = params[:id]
	column = params[:column]
	@item = Item.find(id)
	@item.params[:column] = params[:user_input]
	
	redirect '/'
end 



