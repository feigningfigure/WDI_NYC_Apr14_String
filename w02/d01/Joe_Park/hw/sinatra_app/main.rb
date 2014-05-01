require 'sinatra'
require 'sinatra/reloader'

require_relative 'db/food_list'

get "/" do
	<<-HTML
	<a href="http://localhost:4567/lunch">Help me pick a lunch!</a>

	HTML
end


get "/lunch" do 
	lunch = $food_list.sample
	"The suggestion for today is #{lunch}."
end


# x = rand(1..10)
# "The suggestion for today is #{$food_list[x]}."
