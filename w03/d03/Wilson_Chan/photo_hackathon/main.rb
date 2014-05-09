require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'httparty'
require 'pg'
require 'pry'


# Instagram.configure do |config|
#   config.client_id = "86893d683a2145fda781f77e48b9aa4a" #"86893d683a2145fda781f77e48b9aa4a"
#   config.client_secret = "6fea5cbc10214966b131c43563fd4664" #"6fea5cbc10214966b131c43563fd4664"
# end


ActiveRecord::Base.establish_connection(
database: "instagramapi",
adapter: "postgresql")

# #models
# require_relative 'models/photo'


# LIBRARIES
require_relative 'lib/instagram'

get '/' do
  @photo = Instagram.get_photo

 erb :index
end


get '/new' do
  # shows a form to input new posts/photos
  erb :new
end

# get '/photos/:id' do
#   # show me a single photo with given id
#   @post_id = params[:id]
#   @post = Post.find(@post_id)
#   erb :show
# end

# get '/photos/:id/delete' do
#   # deletes a single photo with given id
#   post_id = params[:id]
#   post = Post.find(post_id)
#   post.destroy
#   redirect "/"
#   # "You have deleted #{post_id.to_s}"
# end

# post '/photos' do
#   # processes new photo data
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
