#Hello Sinatra Quiz
require 'sinatra'
require 'sinatra/reloader'

# Home Path
get '/:name' do
	"Hello, my name is #{params[:name]}"
end