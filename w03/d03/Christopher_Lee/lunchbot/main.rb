require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pg'
require 'pry'
require 'httparty'

# establishes connection once and for all...
ActiveRecord::Base.establish_connection({
  database: "wdi_lunch",
  adapter: "postgresql"
})

# MODELS
require_relative 'models/lunch'

get '/' do
  @lunches = Lunch.all
  erb :index
end

get '/add' do
  erb :add
end

post '/add' do
  # processes new post data
  lunch_name = params[:lunch_name]
  rating = params[:rating]

  Lunch.create(
  lunch_name: lunch_name,
  rating: rating
  )
  redirect "/"
end
