require 'sinatra'
require 'sinatra/reloader'

get '/' do
	"Hello World!"
end

get '/:name' do
	"Hello, my name is #{params[:name]}"
end

get '/:name/:meal' do
	"I'm #{params[:name]} and I love #{params[:meal]}"
end

