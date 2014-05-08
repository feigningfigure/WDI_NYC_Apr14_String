require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'
require 'httparty'
require "active_record"

ActiveRecord::Base.establish_connection({
  database: "e_store_db",
  adapter: "postgresql"
})

require_relative 'models/item'

get '/' do 

	@items = Item.all

    erb :index
end


get '/items/new' do 

	
    erb :new
end

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

get '/items/:id/view' do

    @item_id = params[:id] 
    @item = Item.find(@item_id)


erb :show
end


get '/items/:id/delete' do 

  item_id = params[:id]
  item = Item.find(item_id)
  item.destroy
  redirect "/"

end

get '/items/:id/edit' do 

    erb :edit
end




