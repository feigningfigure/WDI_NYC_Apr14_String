require 'sinatra'
require 'sinatra/reloader'
require 'pg'



def connect_to_db
	return PG.connect({dbname: 'blog1'})
end

get '/' do

  @posts = []
  connect_to_db.exec("SELECT * FROM posts").each do |post| 
  		@posts << post
  end
  @posts.to_s
end