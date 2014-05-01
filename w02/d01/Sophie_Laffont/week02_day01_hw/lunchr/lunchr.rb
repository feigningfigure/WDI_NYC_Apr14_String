require 'sinatra'
require 'sinatra/reloader'


require_relative 'db/menu'



get "/" do
	<<-HTML
	<a href="http://localhost:4567/menu"><h1>help me pick lunch</h1></a>
	HTML
end
 
 get "/menu" do
 	menu_suggestion = rand(0..9) # picking an number and then getting the corresponding value 
 	# in the array
 	"You  will be eating #{[$food[menu_suggestion]]}."
 end
