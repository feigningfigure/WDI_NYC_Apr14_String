require 'sinatra'
require 'sinatra/reloader'
# require 'musicbrainz'
require 'httparty'
# require 'json'
require 'pry'

get '/' do
	
url = "http://ws.audioscrobbler.com/2.0/?method=artist.gettopalbums&artist=cher&api_key=85994c752ce718ddb31b3f402f030250&format=json"
artist_json  = HTTParty.get(url)
@artist = JSON(artist_json)
	end