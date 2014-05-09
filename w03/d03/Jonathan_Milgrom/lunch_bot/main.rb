require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pg'
require 'pry'
require 'httparty'

# MODELS
require_relative 'models/lunch'

# establishes connection once and for all...
ActiveRecord::Base.establish_connection({
  database: "wdi_lunch",
  adapter: "postgresql"
})

get '/' do
  @lunch = Lunch.all
  erb :index
end
