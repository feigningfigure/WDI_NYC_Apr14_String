require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do
	erb :index
end

get '/name' do
	@name = params[:user_name]
	erb :name
end

post '/photos' do
 params.to_s
end
