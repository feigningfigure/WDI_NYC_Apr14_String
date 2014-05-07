require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pg'
require_relative 'models/item.rb'


ActiveRecord::Base.establish_connection({
  database: "items",
  adapter: "postgresql"})

get '/' do
end

# get '/items/new' do
# end
# get '/items/:id/view' do
# end
# get '/items/:id/edit' do
# end
# get '/items/:id/delete' do

