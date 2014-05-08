require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'pg'
require 'active_record'

require_relative 'lib/facebook'
require_relative 'lib/imgur'
require_relative 'models/friend'

ActiveRecord::Base.establish_connection({
  database: "friendlr",
  adapter: "postgresql"
})

get '/' do
  @friends = Friend.all
  erb :index
end
