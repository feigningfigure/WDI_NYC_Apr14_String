require 'sinatra'
require 'sinatra/reloader'




get "/" do
	"About me."
end


get "/contact" do
	
		"<h1>Sophie Laffont</h1>\n<h2>100000 Hello Street\nPluto, space 48654960742596\n</h2>"	
		
end
 

get "/albums" do
	
	"<ul>
		<h3><li>Harvest</li>
		<li>Jukebox</li>
		<li>Cornichons</li></h3>
	</ul>"

	end




