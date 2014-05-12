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

# LIBRARIES

#require_relative 'lib/facebook'

get '/' do
  #SELECT * FROM lunches;
  @lunches = Lunch.all
  erb :index
end

