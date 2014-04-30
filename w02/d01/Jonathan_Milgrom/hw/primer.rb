require 'sinatra'
require 'sinatra/reloader'

get '/:names/:name' do
	"Hello #{params[:name]}"
end