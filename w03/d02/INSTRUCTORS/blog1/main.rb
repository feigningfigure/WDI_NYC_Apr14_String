require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'

# MODELS
require_relative 'models/post'

get '/' do
  @posts = Post.all
  erb :index
end

get '/posts/new' do
  # shows a form to input new post
  erb :new
end

get '/posts/:id' do
  # show me a single post with given id
  @post_id = params[:id]
  @post = Post.find(@post_id)
  erb :show
end

get '/posts/:id/delete' do
  # deletes a single post with given id
  post_id = params[:id]
  post = Post.find(post_id)
  post.destroy
  redirect "/"
  # "You have deleted #{post_id.to_s}"
end

post '/posts' do
  # processes new post data
  title = params[:title]
  body = params[:body]
  author = params[:author]

  Post.create(
    title: title,
    body: body,
    author: author
  )
  redirect "/"
end
