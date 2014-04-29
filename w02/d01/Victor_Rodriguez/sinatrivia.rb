#Sinatrivia Quiz
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	<h1>"Who was the first man in space?"</h1>
end

get '/yuri_gagarin' do
	<h1>"Correct. Who was the first man on the moon?"</h1>
end

get '/neil_armstrong' do
	<h1>"Correct."</h1>
end
