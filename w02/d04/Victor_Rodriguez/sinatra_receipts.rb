require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do
  erb :index
end

get '/name' do
 @name = params[:name]
 #@name = [user_input].name
 #@cost = quote[user_input].cost
 erb :name
end

get '/cost' do
 @name = params[:cost]
 erb :cost
end

puts "Your Receipt Has Been Printed"
