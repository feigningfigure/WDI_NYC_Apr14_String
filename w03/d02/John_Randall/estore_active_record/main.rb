# ##Part 2
# ### AmaZone 
# get an E-Store!
# - Create a folder called `e_store`


# - Write a Sinatra applications using **ActiveRecord**
# - There should be:
# - A class in your models folder for `item`


# - A table in a new `amazon_e_store` database for `items`, and it should have the following schema

# | id | name | price | description | quantity | created_at
# |----|-----|------|----|----|
# | serial | varchar(255) | decimal | text | integer |timestamp

# - You should include a route for each of the CRUD operations as follows:
#   - `/` - list all
#   - `/items/new` - form for a new service
#   - `/items/:id/view` - view item information
#   - `/items/:id/edit` - edit item information
#   - `/items/:id/delete` - remove item
# - **REMEMBER**
#   - `C`reate
#   - `R`ead
#   - `U`pdate
#   - `D`elete
# - Each route should perform the appropriate operation


# - For each ActiveRecord command, write the SQL statement in a comment on the line above

# ***BONUS***

# - Create a seed file to fill up your database automatically


#SETUP
# require 'Bundler'
# Bundler.require

require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pg'
require 'pry'
require 'httparty'



# establishes connection once and for all...
ActiveRecord::Base.establish_connection({
  database: "amazone_estore",
  adapter: "postgresql"
})

# MODELS
require_relative 'models/item'

# LIBRARIES

# require_relative 'lib/facebook'



###### CONTROLLER

get '/' do 
  #list all
  @items = Item.all
  erb :items_index
  # "hello world"
end



get '/items/new' do 
  # shows a form to input new item
  erb :items_new
end


post '/items' do
  # processes new post data
  item_id = params[:item_id]
  item_name = params[:item_name]
  item_price = params[:item_price]
  item_description = params[:item_description]
  item_quantity_in_inventory = params[:item_quantity_in_inventory]
  item_creation_timestamp = params[:item_creation_timestamp]

  Item.create(
    item_id: item_id,
    item_name: item_name,
    item_price: item_price,
    item_description: item_description,
    item_quantity_in_inventory: item_quantity_in_inventory,
    item_creation_timestamp: item_creation_timestamp
  )
  redirect('/')
end



get '/items/:id/view' do 
  # show me a single item with given id
  item_id = params[:id]
  @item = Item.find(item_id)
  erb :items_single
  
end



get '/items/:id/edit' do 
  item_id = params[:id]
  @item = Item.find(item_id)
  erb :items_edit
end



post 'items/:id/edit_submit' do
  item_id = params[:item_id]

  @item = Item.find(item_id)
  
  @item.item_name = params[:item_name]
  @item.item_price = params[:item_price]
  @item.item_description = params[:item_description]
  @item.item_quantity_in_inventory = params[:item_quantity_in_inventory]

  @item.save

  redirect('/')
end



get '/items/:id/delete' do 
  # deletes a single item with given id
  item_id = params[:id]
  @item = Item.find(item_id)
  @item.destroy
  
  redirect('/')
  # "You have deleted #{item_id.to_s}"
end



