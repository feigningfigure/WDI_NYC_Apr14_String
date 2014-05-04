require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'HTTParty'

get '/' do

	erb :index
end

get '/choose_artist' do
	composer = @params[:artist_name].to_s.downcase
	@@composer = composer.gsub(" ","_")

	url = "http://musicbrainz.org/ws/2/artist/?query=artist:#{@@composer}"
	artist_hash = HTTParty.get(url)
	@artist = artist_hash['metadata']['artist_list']['artist']
	
	erb :choose_artist
end

get '/artist/:artist_number' do
	@art_number = @params[:artist_number].to_i

	url = "http://musicbrainz.org/ws/2/artist/?query=artist:#{@@composer}"
	artist_hash = HTTParty.get(url)
	@artist = artist_hash['metadata']['artist_list']['artist'][@art_number]

	erb :artist
end
	
get '/artist' do

	erb :artist
end