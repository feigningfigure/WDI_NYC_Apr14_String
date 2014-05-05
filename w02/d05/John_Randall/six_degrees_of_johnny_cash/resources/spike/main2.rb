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






class Six_degrees_engine
	# attr_accessor :start_artist :end_artist

	@@start_artist= users_input_artistA
	@@finish_artist= users_input_artistB

	def build_start_artist
		#### VALIDATE
		id
		mbid
		friendly_name
		@@start_artist = Artist.new(user, id, friendly_name)
	end

	def self.go(artist_a, artist_b)
		artist_a = lookup artist_a
		artist_b = lookup artist_b
	end

	def build_first_artists

	end
	#build artist_a array of recordings
	#search artist_a array of recordings

	def crunch

	end

	# def	go()
	# 	take artistA
	# 	take artistB
	# 	curent_recordings_array = artistA.build_array_of_related_artists()
	# 	current_artist_array = 

	# end
end









class Artist
	attr_accessor :creator, :id, :mbid, :friendly_name, :array_of_release_groups, :array_of_related_artists

	def initialize (creator, id, mbid, friendly_name, array_of_release_groups = [], array_of_related_artists = [])
		@creator = creator
		@id = id
		@mbid = mbid
		@friendly_name = friendly_name
		@array_of_release_groups = array_of_release_groups
		@array_of_related_artists = array_of_related_artists
		build_array_of_related_release_groups(@mbid)
		# build_array_of_related_artists(@build_array_of_related_release_groups)
	end

	def build_array_of_related_release_groups
		api_response_raw = HTTParty.get('http://musicbrainz.org/ws/2/artist/d43d12a1-2dc9-4257-a2fd-0a3bb1081b86/?inc=release-groups')
		api_response_release_groups = api_response_raw.#parse

		api_response_release_groups.each do |hash|
			creator = self
			id = hash.#parse hash for
			mbid= hash.#parse
			friendly_name = hash.#parse
			# array_of_recording_artists = hash.#parse   ??????????
			@array_of_release_groups << Release_group.new(creator, id, mbid, friendly_name)
		end
	end
end

class Release_group
	attr_accessor :creator, :id, :mbid, :creator,  :friendly_name, :array_of_artists

	def initialize(creator, id, mbid, friendly_name)
		@creator = creator
		@id = id
		@mbid = mbid
		@friendly_name = friendly_name

		@array_of_related_artists = []
		build_array_of_related_artists()
	end

	def build_array_of_related_artists
		api_response_raw = HTTParty.get('http://musicbrainz.org/ws/2/release_group/#{@id}/?inc=artists')
		api_response_related_artists = api_response_raw.#parse

		api_response_related_artists.each do |hash|
			creator = self
			id = hash.#parse hash for
			mbid= hash.#parse
			friendly_name = hash.#parse

			@array_of_related_artists << Artist.new(creator, id, mbid, friendly_name)
		end
	end
	end

end


release_group_api_query_data = HTTParty.get('http://musicbrainz.org/ws/2/release-group/50031fc5-b480-368a-a7f2-a5db73fd3370?inc=artists')

release_group_artists_api_query_parsed_data = release_group_api_query_data['metadata']['release_group']['artist_credit']['name_credit']#['artist']


array_of_related_artists_by_name = []
array_of_related_artists_by_id = []

if release_group_artists_api_query_parsed_data.class == Array  #We suspect that there are multiple artists in play
	 release_group_artists_api_query_parsed_data.each do |artist_hash|
	 	# puts ""
	 	# puts artist_hash['artist']['id']
	 	# puts artist_hash['artist']['name']
	 	# puts ""
	 	array_of_related_artists_by_name << artist_hash['artist']['name']
	 	array_of_related_artists_by_id << artist_hash['artist']['id']

	 	puts array_of_related_artists_by_id
	 	# puts ""
	 	puts array_of_related_artists_by_name
	 end

end




end


class MusicBrainz_api_wrapper
	attr_accessor

	def self.get_artist_suggestions(user_input_string)
		array_of_artist_search_hits = MusicBrainz::Artist.search(users_input_artistA)
		top_result_artist_hash = array_of_artist_search_hits[0]
		artistA_mbid = top_result_artist_hash[:mbid]
	end

	def make_artist_obj_from_mbid(mbid)
		artistA = MusicBrainz::Artist.find(artistA_mbid)
	end



end



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
