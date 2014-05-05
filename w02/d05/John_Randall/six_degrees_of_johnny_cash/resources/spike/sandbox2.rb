

# require 'sinatra'
# require 'sinatra/reloader'
require 'httparty'
require 'json'
# require 'musicbrainz'
require 'pry'


# require_relative 'classes/artist.rb'
# require_relative 'classes/release_group.rb'
require_relative 'classes/classes.rb'




##### Setup
$array_of_tested_artists = []
$array_of_artists_to_test = []
$stop_condition = false






###### TESTING
$jcid = 'd43d12a1-2dc9-4257-a2fd-0a3bb1081b86'

j = Artist.new('user_input', $jcid)

$array_of_tested_artists << j
$array_of_artists_to_test << j

while $stop_condition == false
    Algorithm.process($array_of_artists_to_test)
end



# j.build_array_of_releases

# j.release_group_objs_arr.each do |release|
#     release.build_array_of_related_artists
# end






######### PSUDOCODE 

# take input artist
# lookup
# build artist obj
# build array of releasese
# build array of artist obj
#     test for finality
#     add to master array
#     add to test-next array
#         build array of releasese
#         build array of artist obj
#             test for finality
#             add to master array
#             add to test-next array









# MusicBrainz.configure do |c|
#   # Application identity (required)
#   c.app_name = "six_degrees_of_johnny_cash"
#   c.app_version = "0.1 beta"
#   c.contact = "john@johnrandall.com"

#   # # Cache config (optional)
#   # c.cache_path = "/tmp/musicbrainz-cache"
#   # c.perform_caching = true

#   # # Querying config (optional)
#   # c.query_interval = 1.2 # seconds
#   # c.tries_limit = 2
# end






# api_response_raw



# class MusicBrainzArtist
#   include HTTParty
#   base_uri 'musicbrainz.org/ws/2/artist/'

#   def initialize(service, page)
#     @options = { :query => {:site => service, :page => page} }
#   end

#   def questions
#     self.class.get("/2.2/questions", @options)
#   end

#   def users
#     self.class.get("/2.2/users", @options)
#   end
# end






# gets user_input_artist

# def parse_data_from_artist_search_api(user_input_artist)
#     #parse the data
#     return artistID
# end



# class Artist
#     attr_accessor :artistID, :artist_name, :artist_URL
#     def initialize(artistID)
#         raw_api_return = #query API(artistID)
#         @artistID = artistID
#         @artistName = raw_api_return#[blahblah to parse]
#         @artistURL = raw_api_return#[blahblah to parse]
#         @artist ETC = raw_api_return#[blahblah to parse]
#         @artist_release_group_array = []
#         query_api_for_artist_release_groups(@artistID)
#     end

#     def query_api_for_artist_release_groups(artistID)
#         raw_api_return = #query API for releasese(artistID)
#         raw_api_release_group_array = raw_api_return#[blah][blah] parse it down to array.
#         raw_api_release_group_array.each do |release_group|
#             release_group_id = release_group#parse for ID
#             @artist_release_group_array << release_group_id
#         end
#     end


# end