require 'sinatra'
require 'sinatra/reloader'
require 'pry'


get '/' do
	erb :index
end

get '/name' do
  # binding.pry
	@name = params[:user_name]

	erb :name
end
