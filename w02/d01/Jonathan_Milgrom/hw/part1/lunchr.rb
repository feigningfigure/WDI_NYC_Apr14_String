require 'sinatra'
require 'sinatra/reloader'



get '/' do
<<-HTML
<!DOCTYPE html>
<head>
<style>
body {
	text-align: center;
	background: black;
	background-position: center;
}
header {
	background: rgba(0,0,0,0,0);
	color: white;
	font-size: 20px;
	padding-bottom: 5px;
}
}
</style>
</head>
<body>
	<header>

		<h1><a href='http://localhost:4567/lunchr'>click here to figure out what to eat!</a></h1>
	</header>
</body>
HTML
end

get '/:lunchr' do
x=["sandwich", "pizza", "burger", "tacos", "burrito", "smoothie", "chicken", "steak", "korean bbq", "lo mein"]
y = x.shuffle
return y[1]
end
