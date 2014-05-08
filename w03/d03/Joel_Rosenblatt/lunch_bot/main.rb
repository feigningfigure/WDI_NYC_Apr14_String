require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pg'

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
