require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "Hello world!"
end

get '/name/:name' do
  "Hey there, my name is #{params[:name]}"
end

