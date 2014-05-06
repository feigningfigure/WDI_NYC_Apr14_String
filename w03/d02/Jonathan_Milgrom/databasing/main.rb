require 'sinatra'
require 'sinatra/reloader'
require 'pg'

@conn = PG.({dbname: blog1})

get '/' do
  @posts = []
  @conn.exec("SELECT * FROM posts").each do
    |post| @posts << post
  end
  @posts.to_s
end