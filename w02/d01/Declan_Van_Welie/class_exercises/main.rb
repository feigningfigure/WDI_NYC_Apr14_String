require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "Hello World!"
end
#This will interpolate whatever we input  after the "/" for the url at localhost: 4567
get '/:name' do
  "Hello, my name is #{params[:name]}"
end

get '/:name/:meal' do
  "I'm #{params[:name]}, and I love #{params[:meal]}"
end
# # This is equivalent to the above code to make the url dynamic.
# hash = Hash.new
# hash[:name] = "joe"
