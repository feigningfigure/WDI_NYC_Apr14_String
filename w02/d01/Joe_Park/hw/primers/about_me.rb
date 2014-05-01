require 'sinatra'
require 'sinatra/reloader'

get "/" do
	<<-HTML
	<body style="background-color: black;">
	<h1 style="text-align: center; border: 1px solid red; background-color: yellow;">The Chronicles of JoJo the Gritty</h1>
	<h2 style="text-align: center; width: 100px; border: 1px solid red; background-color: yellow;">Week 1</h2>
		<p style="width: 450px; line-height: 2em; border: 1px solid red; background-color: yellow;">Joe had an amazingly frustrating experience with his work in the beginning but the weekend came and some quality cooperation with fellow classmates helped him out.</p>
	<h2 style="text-align: center; width: 100px; border: 1px solid red; background-color: yellow;">Week 2</h2>
		<p style="width: 450px; line-height: 2em; border: 1px solid red; background-color: yellow;">Joe is having a more enjoyable time but he might be underestimating this particular foe....TO BE CONTINUED"</p>
	</body>
	HTML
end

get "/contact" do
	<<-HTML
	<body style="background-color: black;">
	<h1 style="text-align: center; border: 1px solid red; background-color: yellow;">Contact Joe the Gritty</h1>
	<h2 style="text-align: center; width: 300px; border: 1px solid red; background-color: yellow;">Phone: 6464793173</h2>
	<h2 style="text-align: center; width: 300px; border: 1px solid red; background-color: yellow;">Email: parkj1120@gmail.com</h2>
	</body>
	HTML
end

get "/''" do
	<<-HTML
	<body style="background-color: black;">
	<h1 style="text-align: center; border: 1px solid red; background-color: yellow;">Album's of Joe the Gritty</h1>
	<h2 style="text-align: center; width: 300px; border: 1px solid red; background-color: yellow;">BLAHBLAHBLAH</h2>
	HTML
end