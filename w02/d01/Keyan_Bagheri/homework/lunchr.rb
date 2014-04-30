require 'sinatra'
require 'sinatra/reloader'


get '/' do 
	"<h2>Help Me Pick a Lunch!</h2><a href=http://localhost:4567/eatup>Click Here!</a>"
end

get '/eatup' do
	restaurants = ["chipotle","mcdonald's","chop'd","halal","panera","hale n' hearty", "steal someone's food from the fridge","yogurt","fruit cart"]
	restaurant_length = restaurants.length
	number = rand(0..restaurant_length)
	"<h1>#{restaurants[number]}</h1"
end