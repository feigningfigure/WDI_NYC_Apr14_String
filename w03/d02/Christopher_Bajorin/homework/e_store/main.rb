require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'
require_relative 'models/item'

ActiveRecord::Base.establish_connection({
  database: "e_store",
  adapter: "postgresql"
})


get '/' do
  @items = Item.all
  erb :index
end

get '/items' do

  name = params[:name]
  price = params[:price].to_f
  description = params[:description]
  quantity = params[:quantity].to_i

  Item.create(
    name: name,
    price: price,
    description: description,
    quantity: quantity
  )
  redirect "/"
  erb :items
end



get '/items/new' do
  # just a form
  erb :new
end



get '/items/:id/view' do
  # show me an item by id
  @item_id = params[:id]
  @item = Item.find(@item_id)

  erb :view
end



get '/items/:id/edit' do
  # item_id = params[:id]
  # item = Item.find(item_id)
  redirect '/'
  # erb :edit
end



get '/items/:id/delete' do

  item_id = params[:id]
  item = Item.find(item_id)
  item.destroy
  redirect "/"
  "You have deleted #{item_id.to_s}"
  erb :delete
end






# get '/' do
#   @posts = Post.all
#   erb :index
# end

# get '/posts/new' do
#   # shows a form to input new post
#   erb :new
# end
