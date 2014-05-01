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
h1 {
	color: white;
}
</style>
</head>
<body>
	<header>
		<h1> Does the test pass? </h1>
		<h2><a href='http://localhost:4567/pass'>YES</a></h2>
		<h2><a href='http://localhost:4567/notpass'>NO</a></h2>
	</header>
</body>

HTML

end

get '/pass' do
<<-HTML
<!DOCTYPE html>
<head>
<style>
body {
	text-align: center;
	background: black;
	background-position: center;
}
h1 {
	color: white;
}
</style>
</head>
<body>
	<header>
		<h1> Need to refactor? </h1>
		<h2><a href='http://localhost:4567/refactor'>YES</a></h2>
		<h2><a href='http://localhost:4567/feature'>NO</a></h2>
	</header>
</body>

HTML

end

get '/notpass' do
<<-HTML
<!DOCTYPE html>
<head>
<style>
body {
	text-align: center;
	background: black;
	background-position: center;
}
h1 {
	color: white;
}
h2 {
	color: blue;
}
</style>
</head>
<body>
	<header>
		<h1> Write just enough code for the test to pass </h1>
		<h2> Done </h2>
	</header>
</body>

HTML

end

get '/refactor' do
<<-HTML
<!DOCTYPE html>
<head>
<style>
body {
	text-align: center;
	background: black;
	background-position: center;
}
h1 {
	color: white;
}
h2 {
	color: blue;
}
</style>
</head>
<body>
	<header>
		<h1> Refactor your code </h1>
		<h2>DONE</h2>
	</header>
</body>

HTML

end

get '/feature' do
<<-HTML
<!DOCTYPE html>
<head>
<style>
body {
	text-align: center;
	background: black;
	background-position: center;
}
h1 {
	color: white;
}
h2 {
	color: blue;
}
</style>
</head>
<body>
	<header>
		<h1> Select a new feature to implement </h1>
		<h2>DONE</h2>
	</header>
</body>

HTML

end