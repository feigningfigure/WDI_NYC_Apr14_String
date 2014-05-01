require 'sinatra'
require 'sinatra/reloader'

get '/name/:first_name' do
	"Hello #{params[:first_name]}!"
end

