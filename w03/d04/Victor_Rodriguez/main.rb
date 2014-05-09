require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pg'

ActiveRecord::Base.establish_connection({
  # database: "wdi_lunch",
  adapter: "postgresql"
})

require_relative 'models/rectangle'

get '/'  do
  @rectangles = Rectangle.all
  erb :index
end

get '/rectangles/:num/view' do
  # show me a single post with given id
  @rectangles_num = params[:num]
  @rectangles = Rectangles.find(@rectangles_num)
  erb :show
end

#pulling data from form
#post '/addlunches' do
  # processes new post data
 # name = params[:name]
 # rating = params[:rating]

 # Lunch.create(
 #   name: name,
 #   rating: rating
 # )
 # redirect "/"
end
