require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'


# ESTABLISH CONNECTION TO DATABASE
ActiveRecord::Base.establish_connection({
  database: "wdi_lunch",
  adapter: "postgresql"
})

# MODELS
 require_relative 'models/item'

# LIBRARIES
# require_relative 'lib/facebook'

get '/' do
  @items = Item.all
  erb :index
end

