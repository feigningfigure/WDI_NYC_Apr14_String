require 'sinatra'
require 'sinatra/reloader'

get '/' do 
	erb :index
end

get '/name' do
	@purchase = params[:product]
	@cost = params[:price]

	erb :receipt
end