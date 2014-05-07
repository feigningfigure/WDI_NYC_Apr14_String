require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pg'
require 'pry'
require 'httparty'

# establishes connection once and for all...
ActiveRecord::Base.establish_connection({
  database: "amazone_e_store",
  adapter: "postgresql"
})

# MODELS
require_relative 'models/item'

# LIBRARIES

require_relative 'lib/facebook'

# list all DONE
get '/' do
  @items = Item.all
erb :index
end

# CREATE form for a new service DONE
get '/items/new' do
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
  redirect "/"
end


# READ view item information
get '/items/:id/view' do
  @item_id = params[:id]
  @item = Item.find(@item_id)
  erb :view
end

# UPDATE edit item information


get '/items/:id/edit' do
  item_id = params[:id]
  @item = Item.find(item_id)
  erb :edit
end

#@item.name = params[:name]
#@item.save!

post '/items/:id/edit' do
  item_id = params[:id]
  @item = Item.find(item_id)
  name = params[:name]
  price = params[:price]
  description = params[:description]
  quantity = params[:quantity]
  @item.update(
    name: name,
    price: price,
    description: description,
    quantity: quantity
    )
  redirect "/"
end

# DELETE remove item DONE
get '/items/:id/delete' do
    # deletes a single post with given id
  item_id = params[:id]
  item = Item.find(item_id)
  item.destroy
  redirect "/"
  # "You have deleted #{post_id.to_s}"
end

get '/order/:id' do
  @item_id = params[:id]
  @item = Item.find(@item_id)
  @order_type = "order"
  erb :order
end

get '/ship/:id' do
  @item_id = params[:id]
  @item = Item.find(@item_id)
  @order_type = "ship"
  erb :order
end

get '/ship/:id/limit_reached' do
  @limit_reached = true
  @item_id = params[:id]
  @item = Item.find(@item_id)
  @order_type = "ship"
  erb :order
end

post "/place/:order_type/:id" do
  @item_id = params[:id]
  @item = Item.find(@item_id)
  order_value = params[:order_value].to_i
  order_type = params[:order_type]
  if order_type == "ship" && order_value > @item.quantity
    redirect "/ship/#{@item_id}/limit_reached"
  elsif order_type == "order"
    total_value = order_value + @item.quantity
    @item.quantity = total_value
    @item.save!
  else
    total_value = @item.quantity - order_value
    @item.quantity = total_value
    @item.save!
  end
  redirect '/'
end
