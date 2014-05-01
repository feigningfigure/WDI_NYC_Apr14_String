require 'sinatra'
require 'sinatra/reloader'

get '/' do
	"<h1>Keyan Bagheri</h1><h2>About me</h2><p>I'm Tired</p>"
end

get '/contact' do
	"<h1>Don't call me.</h1><h>I'm sleeping</h2><p>Seriously, don't call me.</p>"
end

get '/albums' do
	"<h1>Music I like</h1><p>Mr. Sandman</p><p>Dreamweaver</p><p>Talking in your Sleep</p>"
end