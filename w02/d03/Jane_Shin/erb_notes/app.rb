require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb :index
end

get '/:name' do
	@name = params[:name]
	erb :name
end