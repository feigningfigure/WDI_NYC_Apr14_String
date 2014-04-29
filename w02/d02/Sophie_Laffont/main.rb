require 'sinatra'
require 'sinatra/downloader'

get '/' do 
	redirect "/index.html"
	
end

get '/wow' do 
	"wow!"
	
end