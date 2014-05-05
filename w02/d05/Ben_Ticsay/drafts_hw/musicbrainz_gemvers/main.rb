require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'
require 'json'
require 'MusicBrainz'


MusicBrainz.configure do |c|
  # Application identity (required)
  c.app_name = "My Music App"
  c.app_version = "1.0"
  c.contact = "support@mymusicapp.com"

  # Cache config (optional)
  c.cache_path = "/tmp/musicbrainz-cache"
  c.perform_caching = true

  # Querying config (optional)
  c.query_interval = 1.2 # seconds
  c.tries_limit = 2
end

# MusicBrainz.configure


get "/" do
  erb :index
end

get "/artist/" do

  artista = params[:artist_name]

  # Get query entry from user form from index and make it websafe.
  query = params[:query].gsub(" ", "%20")
  # Set query URL
  url = "http://musicbrainz.org/ws/2/artist/?query=#{query}"
  # Grab the data from the internet
  artist_json = HTTParty.get(url)

  # Converts to hash with '=>' and sets it to an instance variable.
  artist_hash = artist_json.parsed_response

  # Goes through the parsed data to locate the first "name" instance which is the fourth hash in.
  @artist = artist_hash["metadata"]["artist_list"]["artist"]["name"]

  erb :artist



	# @artist_names = MusicBrainz::Artist.find_by_name(artista).name

	# @artist_id = MusicBrainz::Artist.find_by_name(artista).id

	# @artist_type = MusicBrainz::Artist.find_by_name(artista).type

	# @artist_country = MusicBrainz::Artist.find_by_name(artista).country

	# @artist_url = MusicBrainz::Artist.find_by_name(artista).url





 #  	url = "http://musicbrainz.org/ws/2/artist/?query=#{artist_name}"
	# friend_json = HTTParty.get(url) 
	# @artist = JSON(_json) 


  erb :artist



end
















