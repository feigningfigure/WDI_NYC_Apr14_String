require 'sinatra'
require 'sinatra/reloader'

get "/" do
	"Hello World!"
end

#this is telling it what the key will be....exercise to get address bar to show /joe
get '/:name' do
	"Hello, my name is #{params[:name]}"
end
#hash called params with key called symbol name
#params is an invisible hash and the name is a value.

get '/:name/:meal' do
	"I'm #{params[:name]} and I love #{params[:meal]}"
end

