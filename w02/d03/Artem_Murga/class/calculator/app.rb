require 'sinatra'
require 'sinatra/reloader'


get '/' do
	erb :index	
end

get '/:first/:second' do
	@first = params[:first]
	@second = params[:second]
	@third = @first.to_i + @second.to_i
	erb :calc
end