require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'
require 'json'
require 'musicbrainz'
require 'open-uri'

get '/' do

  erb :index
  end

get '/albums' do

  @artist_name = params[:artist_name]
  url = "http://musicbrainz.org/ws/2/freedb/?query=artist:" + @artist_name.to_s
  @artist_raw = HTTParty.get(url)
  @albums_raw = @artist_raw["metadata"]["freedb_disc_list"]["freedb_disc"]

  @albums_array = []
  @albums_raw.each do |e|
  @albums_array << e["title"]
  end

erb :index
erb :albums

end


=begin
get '/' do
  erb :index
end

get '/artist' do
  @artist = MusicBrainz::Artist.search(artist)
  erb :artist
end


get '/artist' do
  # enter the username info to a variable for future use
  artist_name = params[:artist_name]
  # set the url to connect to the API
  url = "http://musicbrainz.org/ws/2/freedb/?query=artist:" + @input_artist.to_s
  @artist_raw = HTTParty.get(url)
  # variable JSON to retrieve a legible hash from API
  @albums_raw @artist_raw["metadata"]["freedb_disc_list"]
  # @artist = HTTParty.get(url)
  # artist_json = HTTParty.get(url)
  # pass this pre-JSON data from API to variable to execute JSON
  # @artist = JSON(artist_json)

  erb :artist

  # conditional to handle errors in non-existent users/gibberish input. need to take something like an "error" hash key that API returns

  # if @artist["error"]
  #   @message = "Error: Artist not found"
  #   erb :index
  # else
  #   erb :artist
  # end

end
=end



=begin
David.Hackathon

musicbrainz gem --> pry
musicbrainz api --> httparty -->pry

p1.
sinatra routes to submit form data to (above choice)
sinatra route to return info

p2.
a. display all the tracks from a simple query
>> the beatles:: show tons of info and pics and all tracks on the beatles
>> slowly start narrow down info via query option
>>


p1.phase1 enter artist [______]
p1.phase2 enter artist [______] do you want to see _[albums] _[pics] _[tracks]

=end
