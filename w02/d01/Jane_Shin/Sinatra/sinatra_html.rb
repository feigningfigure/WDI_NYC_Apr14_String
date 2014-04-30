require 'sinatra'
require 'sinatra/reloader'

get '/' do
	<<-HTML
	<!DOCTYPE html>
	<head>
  	<title>Jane of All Trades</title>
  	<style>
  		body {
  		text-align: center;
  		background: url("http://i.imgur.com/0Fb7zUe.png");
  		background-size: cover;
  		background-position: center;
  		color: black;
  		font-family: helvetica;
  		padding: 30px;
  	}
  	</style>
  	</head>
  	<body>
  		<h1>Hi, My name is Jane.</h1>
  		<p>I love them ugly doggies. I made my background for you, hope you enjoy!</p>
  	</body>
	HTML
end

get '/contact' do
	<<-HTML
	<!DOCTYPE html>
	<head>
	<title>Contact Jane of All Trades</title>
	<style>
		body {
		font-family: helvetica;
		color: black;
		text-align: center;
	}
	</style>
	</head>
	<body>
	<h1>Need to get in touch?</h1>
	<p>email: Jane@ilikeuglydogs.com</p>
	</body>
	HTML
end

get '/albums' do
	<<-HTML
	<!DOCTYPE html>
	<head>
	<title>Albums Jane of All Trades</title>
	<style>
		body {
		font-family: helvetica;
		color: black;
		text-align: center;
	}
	</style>
	</head>
	<body>
		<h1>Here's some of the music I listen to while I code.</h1>
		<article>
			<h3>MUSE Absolution</h3>
			<img src="http://img.hmv.co.jp/image/jacket/400/17/9/1/593.jpg">
		</article>
		<article>
			<h3>N.E.R.D. The Best Of</h3>
			<img src="http://plusradar.files.wordpress.com/2011/04/nerd-bestof.jpg?w=400&h=400">
		</article>
		<article>
			<h3>SKRILLEX Recess</h3>
			<img src="http://cdn.idolator.com/wp-content/uploads/2014/03/11/skrillex-recess-400x400.jpg">
		</article>
	</body>
	HTML
end
