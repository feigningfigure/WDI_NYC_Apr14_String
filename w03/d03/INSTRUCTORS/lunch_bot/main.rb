require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pg'

ActiveRecord::Base.establish_connection({
  database: "wdi_lunch",
  adapter: "postgresql"
})

require_relative 'models/lunch'

get '/'  do
  @lunches = Lunch.all
  erb :index
end

get '/new' do
  # shows a form to input new post
  erb :add
end

#pulling data from form
post '/addlunches' do
  # processes new post data
  name = params[:name]
  rating = params[:rating]

  Lunch.create(
    name: name,
    rating: rating
  )
  redirect "/"
end

