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

get '/lunches/new' do
  # shows a form to input new post
  erb :new
end

get '/lunches/:id' do
  # show me a single post with given id
  lunch_id = params[:id]
  @lunch = Lunch.find(lunch_id)
  erb :view
end

get '/lunches/:id/delete' do
  # deletes a single post with given id
  lunch_id = params[:id]
  lunch = Lunch.find(lunch_id)
  lunch.destroy
  redirect "/"
  # "You have deleted #{post_id.to_s}"
end

post '/lunches' do
  # processes new post data
  name = params[:lunch_name]
  rating = params[:rating]

  Lunch.create(
    lunch_name: name,
    rating: rating
  )
  redirect "/"
end