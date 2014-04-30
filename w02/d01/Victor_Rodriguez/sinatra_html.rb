#Sinatra html quiz
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	"<h1>About Me. Victor Rodrgiuez. NY native. WDI neophyte.<h1>"
end

get '/contact' do
	"<h1>Victor Rodriguez. Can be reached at rodriguezva@hotmail.com<h1>"
end

get '/albums' do "<h1>I like artists, nit albums. Favs are Prince, Beatles, Eminem, JayZ</h1>"
end