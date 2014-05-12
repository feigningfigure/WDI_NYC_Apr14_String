require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pg'

ActiveRecord::Base.establish_connection({
  database: "wdi_lunch",
  adapter: "postgresql"
  })

require_relative 'models/lunch'




get '/' do
  @lunches = Lunch.all
  erb :index
end


get '/add' do

  erb :add
end

post '/lunches' do
  # processes new item data
    name = params[:name]
    rating = params[:rating]



  Lunch.create(
    name: name,
    rating: rating


  )
  redirect "/"
end
