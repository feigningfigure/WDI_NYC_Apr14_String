# gets artistA
# gets artistB
require 'musicbrainz'
require 'pry'

require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'


MusicBrainz.configure do |c|
  # Application identity (required)
  c.app_name = "six_degrees_of_johnny_cash"
  c.app_version = "0.1 beta"
  c.contact = "john@johnrandall.com"

  # # Cache config (optional)
  # c.cache_path = "/tmp/musicbrainz-cache"
  # c.perform_caching = true

  # # Querying config (optional)
  # c.query_interval = 1.2 # seconds
  # c.tries_limit = 2
end



# $music_brains_api_url = "http://musicbrainz.org/ws/2/"

users_input_artistA = "Johnny Cash"
users_input_artistB = "George Jones"



# Search for artists
array_of_artist_search_hits = MusicBrainz::Artist.search(users_input_artistA)
top_result_artist_hash = array_of_artist_search_hits[0]                        #TODO: Takes the top hit - may not be correct.
artistA_mbid = top_result_artist_hash[:mbid]

artistA = MusicBrainz::Artist.find(artistA_mbid)    # ie: "new", instantiates a new artist object

array_of_artistA_release_groups = artistA.release_groups


array_of_related_artists= []

array_of_artistA_release_groups.each do |release_group|									#release_group ask API for artists
  
  release_group_id = release_group.id
  release_group_api_query_data = HTTParty.get("http://musicbrainz.org/ws/2/release-group/#{release_group_id}?inc=artists")
end





get '/' do
	@welcome_message = ""#welcome message
	@explaination_test = ""#explain the project - image
	#input box asking for artist a and artist b
  	erb :index
end


# get '/validate_input' do
# 	#show user the fuzzy maches on their input
# 	#have user choose which is the actual artist they are looking for (by id)
#   	erb :validate_input
# end

get '/running' do
  	@wait_text = ""#tell user jokes while they wait.
  	#in Version 2, this can be live updated with found data and user can watch the crawl
  	erb :running
end

get '/output' do
	@number_of_degress = "" #tells user how many degrees of seperation
	#in version 2, trace the path to those degress of seperation (Artist A –> album X –> artist X –> album x – artist B )
  	erb :output
end









# 288b58ea-6b89-3dae-8428-2822fb15c7cb

### UNPACKING RELEASE GROUP - PROBABLY NOT NEEDED

# array_of_artistA_releases= []

# array_of_artistA_release_groups.each {|release_groups_obj|
#   array_of_artistA_releases << release_groups_obj.releases
# }




# data = HTTParty.get("http://musicbrainz.org/releasegroup/"id"")
# puts data

# get '/movie/:title' do
  # grabbed data from the internet

#   # parse the JSON and transform it into Ruby Hash
#   hash = JSON.parse(movie_data)
#   #this sets @title to the first title in search results
#   @title = hash["Search"][0]["Title"]
#   # this sets @year to the first year in the search results
#   @year = hash["Search"][0]["Year"]
#   erb :show
# end









binding.pry
