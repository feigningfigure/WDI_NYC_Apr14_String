require 'sinatra'
require 'sinatra/reloader'
require 'HTTParty'
require 'pry'
require 'wikipedia'
require 'nokogiri'
require 'open-uri'
#require 'restclient'


get '/' do


	#@page = Nokogiri::HTML(open("http://en.wikipedia.org/wiki/Nirvana_(band)"))


	erb :index
end

get '/albums' do

	#@input = input
	@input_artist = params[:input_artist]
	url = "http://musicbrainz.org/ws/2/freedb/?query=artist:" + @input_artist.to_s
	@artist_raw = HTTParty.get(url)
	#binding.pry
	@albums_raw = @artist_raw["metadata"]["freedb_disc_list"]["freedb_disc"]

	@albums_array = []
	@albums_raw.each do |e|
			@albums_array << e["title"]
	end

	@pic = HTTParty.get("http://coverartarchive.org/release/76df3287-6cda-33eb-8e9a-044b5e15ffdd/front")


	erb :albums
	end

# {:id=>"b2d122f9-eadb-4930-a196-8f221eeb0c66", :mbid=>"b2d122f9-eadb-4930-a196-8f221eeb0c66"
	
	
	#@empire_tracks = @kasabian.release_groups[8].releases.first.tracks
	

# MusicBrainz.configure do |c|
#   # Application identity (required)
#   c.app_name = "My Music App"
#   c.app_version = "1.0"
#   c.contact = "support@mymusicapp.com"

#   # Cache config (optional)
#   c.cache_path = "/tmp/musicbrainz-cache"
#   c.perform_caching = true

#   # Querying config (optional)
#   c.query_interval = 1.2 # seconds
#   c.tries_limit = 2
# end