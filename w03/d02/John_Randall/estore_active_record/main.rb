# ##Part 2
# ### AmaZone gets an E-Store!
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
require 'Bundler'
Bundler.require

#MODELS
require_relative 'models/item'

###### CONTROLLER
gets '/' do 
  #list all
  @items = Item.all
  erb :items_index
end

gets 'items/new' do 
  # shows a form to input new item
  erb :items_new
end

gets '/items/:id/view' do 
   # show me a single item with given id
  @item_id = params[:id]
  @item = Item.find(@item_id)
  erb :items_single
  
end

gets '/items/:id/edit' do 
  
end

gets '/items/:id/delete' do 
  # deletes a single item with given id
  item_id = params[:id]
  item = item.find(item_id)
  item.destroy
  redirect "/"
  # "You have deleted #{item_id.to_s}"
end




####?????

# post '/posts' do
#   # processes new post data
#   title = params[:title]
#   body = params[:body]
#   author = params[:author]

#   Post.create(
#     title: title,
#     body: body,
#     author: author
#   )
#   redirect "/"