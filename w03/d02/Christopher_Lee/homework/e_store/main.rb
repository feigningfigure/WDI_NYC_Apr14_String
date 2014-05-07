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


get '/items/:id/edit' do
  item_id = params[:id]
  @item = Item.find(item_id)
  erb :edit
end

post '/items/:id/edit' do
  item_id = params[:id]
  @item = Item.find(item_id)
  name = params[:name] unless params[:name].nil?
  price = params[:price] unless params[:name].nil?
  description = params[:description] unless params[:name].nil?
  quantity = params[:quantity] unless params[:name].nil?
  @item.update(
    name: name,
    price: price,
    description: description,
    quantity: quantity)
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



# get '/' do
#   @posts = Post.all
#   erb :index
# end

# get '/posts/new' do
#   # shows a form to input new post
#   erb :new
# end

# get '/posts/:id' do
#   # show me a single post with given id
#   @post_id = params[:id]
#   @post = Post.find(@post_id)
#   erb :show
# end

# get '/posts/:id/delete' do
#   # deletes a single post with given id
#   post_id = params[:id]
#   post = Post.find(post_id)
#   post.destroy
#   redirect "/"
#   # "You have deleted #{post_id.to_s}"
# end

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
# end
