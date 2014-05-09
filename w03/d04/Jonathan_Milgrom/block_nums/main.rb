require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do
	

	erb :index
end

get '/:num' do
	@num = params[:num].to_i
	erb :index
end