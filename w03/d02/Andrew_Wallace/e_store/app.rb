require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'
require 'pg'


# ESTABLISH CONNECTION TO DATABASE
ActiveRecord::Base.establish_connection({
  database: "amazon_e_store",
  adapter: "postgresql"
})

# MODELS
 require_relative 'models/item'

# LIBRARIES
# require_relative 'lib/facebook'

get '/' do
  @items = Item.all
  erb :index
end

get '/items/new' do
  erb :new
end


post '/items/new' do

  Item.create({
  name: params[:name],
  price: params[:price],
  description: params[:description],
  quantity: params[:quantity]
  })

  redirect "/items"
end

get '/items/:id/show' do
  # show me a single post with given id
  @item_id = params[:id]
  @item = Item.find(@item_id)
  erb :show
end

get '/items' do
  @items = Item.all# show me all items
  erb :show_all
end

get '/items/:id/edit' do
  # deletes a single post with given id
  @item_id = params[:id]
  @item = Item.find(@item_id)
  erb :edit
end

post '/items/:id/update' do
  Item.update(params[:id], {
    name: params[:name],
    price: params[:price],
    description: params[:description],
    quantity: params[:quantity]
  })
  redirect "/items/#{params[:id]}/show"
end


get '/items/:id/delete' do
  # deletes a single post with given id
  item_id = params[:id]
  item = Item.find(item_id)
  item.destroy
  redirect "/"
  # "You have deleted #{post_id.to_s}"
  erb :delete
end

post '/items' do
  # processes new post data
  name = params[:name]
  price = params[:price]
  description = params[:description]
  quantity = params[:quantity].to_i

end

