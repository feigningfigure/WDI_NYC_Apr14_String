require 'sinatra'
require 'sinatra/reloader'

get '/' do 
	"good morning"
end

get '/:place' do
	"Welcome to #{params[:place]}"
end