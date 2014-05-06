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
