require 'sinatra'
require 'sinatra/reloader'

def make_headiing(username)
	#this is a function that makes an html string
	"<h1>Welcome #{username}!</h1>"
end

get '/' do
	redirect "/index.html"
end