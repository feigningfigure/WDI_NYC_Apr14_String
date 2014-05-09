require 'sinatra'
require 'sinatra/reloader'
require 'pg'

def connect_to_db
	@conn = PG.connect (
	dbname: 'blog1')
end

get '/' do 
	@posts = []
	connect_to_db.exec("SELECT * FROM posts").each do
	|post| @posts << post
	end
	erb: index	
end

#MODELS
#require_relative 'models/post'

# get '/' do
#posts = Post.get_all_posts
#binding.pry
#erb: index
#end



get '/posts/create' do
	