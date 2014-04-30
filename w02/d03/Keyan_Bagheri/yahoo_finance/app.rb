require 'sinatra'
require 'sinatra/reloader'
require 'yahoofinance'


get '/' do
	erb :index	
end

get '/name' do
	binding.pry
	@name = params[:user_name]

	erb :name
end

post '/photos' do
	params.to_s
end