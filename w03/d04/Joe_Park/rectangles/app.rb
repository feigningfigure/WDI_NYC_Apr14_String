require 'sinatra'
require 'sinatra/reloader'


get '/' do 

	erb :index
end


get '/:num' do
	@num = params[:num].to_i

	erb :blocks
end
