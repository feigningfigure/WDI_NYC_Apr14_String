require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb :index
end

get '/receipt' do
	name = params[:name]
	cost = params[:cost]
	@receipt = "Company Name: Particular Assembly Inc.\nGood/Service Provided: #{name}\nCost: $#{cost}\nThank you for the your patronage\n"
	erb :receipt
end

