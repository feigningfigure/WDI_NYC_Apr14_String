require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'instagram'


# ActiveRecord::Base.establish_connection
# database:
# adapter: "postgresql"

#models
require_relative 'models/photo'


# LIBRARIES
require_relative 'lib/instagram'

get '/' do
 erb :index
end


get '/photos/new' do

     end

