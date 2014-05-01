# Part 1
# Lunchr
# Create a Sinatra application
# '/' should show a link that says "Help me pick a lunch!"
# Clicking on the link should suggest a user what to eat for lunch.
# The suggestion should be a random selection from a preset group of 10 total choices.

require 'sinatra'
require 'sinatra/reloader'
require 'pry'


lunch_options_arr = []
lunch_options_arr << "Bananas"
lunch_options_arr << "Cherrios"
lunch_options_arr << "Pizza"
lunch_options_arr << "Gummy Worms"
lunch_options_arr << "P.E.Z."
lunch_options_arr << "Worms"
lunch_options_arr << "Centipedes"
lunch_options_arr << "Poop"
lunch_options_arr << "Pee"
lunch_options_arr << "Macaroni and Cheeeeeeze!"


get '/' do
	"#{$top_copy}
	<p><a href = '/lunch'>What should I eat?</a></p>
	"
end


get '/lunch' do
	lunch_options_arr.shuffle!
	"#{$top_copy}
	<p>You should eat #{lunch_options_arr.first}!</p>
	<p><a href='/'>play again?</a></p>
	"
end


$top_copy = "
	<h1>Welcome to the lunch picker</h1>
	<p><em>All options provided by Maxwell, age 3.</em></p>
	<p></p>
	"