require 'sinatra'
require 'sinatra/reloader'

# Hello, Sinatra!
get '/name/:name' do
	"Hello #{params[:name]}!"
end

# It takes two to Sinatra
get '/tea/:name1/:name2' do
	"#{params[:name1]} and #{params[:name2]} are having a lovely tea ceremony."
end

get '/battle/:name1/:name2' do
	 results = ["#{params[:name1]}", "#{params[:name2]}"].shuffle
	 name1 = results[0]
	 name2 = results[1]
	"#{name1} beat #{name2} !"
end

# Sinatrivia
get '/' do
	"Who was the first man in space?"
end

get '/yuri_gagarin' do
	"Correct! Who was the first man on the moon?"
end

get '/neil_armstrong' do 
	"Correct again!"
end


