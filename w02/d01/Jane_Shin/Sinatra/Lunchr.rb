require 'sinatra'
require 'sinatra/reloader'

lunch_spots = ["sandie", "mexican", "pizza", "salad", "burgers", "smoothie", "hot bar", "soup", "chicken"]

get '/lunch_spots' do
	lunch = rand(0..9)
	"You should have #{lunch_spots[lunch]} for lunch today!"	
end

get '/' do
	<<-HTML
	"<a href="/lunch_spots">Help me pick a lunch!</a>"
	HTML
end
