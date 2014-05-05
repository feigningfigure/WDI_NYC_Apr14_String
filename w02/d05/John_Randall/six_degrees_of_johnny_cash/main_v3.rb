
######### PSUDOCODE  - the plan

# take input artist
# lookup
# Algorithm
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


####

# GEMS

require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'
require 'pry'


### CLASSES
require_relative 'classes/classes.rb'
# require_relative 'classes/artist.rb'
# require_relative 'classes/release_group.rb'



##### Setup globals
$array_of_tested_artists = []
$array_of_artists_to_test = []
$stop_condition = false
# $artist_b_id = ''
# $artist_b.name = ''
$num_of_degrees_so_far = 0



###### Create Johnny
$johnnys_id = "d43d12a1-2dc9-4257-a2fd-0a3bb1081b86"
# $johnny = Artist.new('user_input', $johnnys_id)
$array_of_artists_to_test << $johnny

# while $stop_condition == false
#     Algorithm.process_artists_array($array_of_artists_to_test)
# end








##ERB

get '/' do
  erb :home
end

get '/waiting' do
  @user_input = params[:name]

    # $artist_b_id = Algorithm.process_user_input_to_artist_id(params[:name].gsub(" ", "%20"))
    # $artist_b = Artist.new('user_artist_b_input', $artist_b_id)  

    @title = "SIX DEGREES OF JOHNNY"

    erb :waiting
  # while $stop_condition == false
    # Algorithm.process_artist_array($array_of_artists_to_test)
  # end
  # if $stop_condition ==true
    # @title = "SIX DEGREES OF JOHNNY"
    # erb :degrees
  # end
end

get '/degrees' do
  @title = "SIX DEGREES OF JOHNNY"
  # @artist_b_name = $artist_b.name
  # @num_of_degrees = $num_of_degrees
  erb :degrees
end

get '/about' do
  @title = "ALL ABOUT CASH"
  erb :about
end

# Hey John, does it make sense to you to see a link of the Degrees/RESULTS page on the homepage? I don't think so. But I'm just creating it here to show you the entire skeleton of this website.

get '/contact' do
  @title = "CONTACT US"
  erb :contact
end

not_found do
  @title = "GET OUT OF FOLSOM"
  erb :error
end





