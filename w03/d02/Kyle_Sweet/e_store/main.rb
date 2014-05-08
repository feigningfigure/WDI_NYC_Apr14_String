require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'
require 'active_record'

# establishes connection once and for all...
# ActiveRecord::Base.establish_connection({
#   database: "amazon_e_store",
#   adapter: "postgresql"
# })

require_relative 'models/item.rb'


get '/' do
  @items = Item.all
  erb :index
end

get '/items/new' do

  erb :newitem

end


get '/items/:id/view' do
  @items = Item.all
  erb :index

end

get '/items/:id/edit' do
end

get '/items/:id/delete' do
end

post '/items' do
  # processes new post data
  name = params[:name]
  price = params[:price]
  description = params[:description]
  quantity = params[:description]
  created_at = params[:description]
  Item.create(
    title: name,
    price: price,
    description: description,
    quantity: quantity,
    created_at: created_at
  )
  redirect "/"
end




# #/ - list all
# /items/new - form for a new service
# /items/:id/view - view item information
# /items/:id/edit - edit item information
# /items/:id/delete - remove item
