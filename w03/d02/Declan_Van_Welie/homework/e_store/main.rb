require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pg'
require 'pry'
require 'httparty'

# establishes connection once and for all...
ActiveRecord::Base.establish_connection({
  database: "amazon_e_store",
  adapter: "postgresql"
})


# MODELS
require_relative 'models/item'

# LIBRARIES

# require_relative 'lib/facebook'

get '/' do
  @items = Item.order(id: :desc)
  erb :index
end

get '/items/new' do
  # shows a form to input new post
  erb :new
end

get '/items/:id' do
  # show me a single post with given id
  @item_id = params[:id]
  @item = Item.find(@item_id)
  erb :show
end

get '/items/:id/delete' do
  # deletes a single post with given id
  item_id = params[:id]
  item = Item.find(item_id)
  item.destroy
  redirect "/"
  #"You have deleted #{item_id.to_s}"
end

get '/items/:id/edit' do
  # deletes a single post with given id
  item_id = params[:id]
  @item = Item.find(item_id)
  # "You have deleted #{post_id.to_s}"
  erb :edit
end

post '/items/:id' do
  # processes new post data
  item_id = params[:id]
  item = Item.find(item_id)
  item.name = params[:name]
  item.price = params[:price]
  item.description = params[:description]
  item.quantity = params[:quantity]
  item.save

  redirect "/items/#{item_id}"
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


#edit: you need to call .save on it


# each array has one hash, so you can access the first hash and then the first key in the hash
