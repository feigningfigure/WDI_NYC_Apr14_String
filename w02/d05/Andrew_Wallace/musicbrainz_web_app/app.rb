require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'pry'
require 'json'

get "/" do
  erb :index
end

get '/artist/' do
  # Get query entry from user form from index and make it websafe.
  query = params[:query].gsub(" ", "%20")
  # Set query URL
  url = "http://musicbrainz.org/ws/2/artist/?query=#{query}"
  # Grab the data from the internet
  artist_json = HTTParty.get(url)

  # Converts to hash with '=>' and sets it to an instance variable.
  artist_hash = artist_json.parsed_response

 # Goes through the parsed data to locate the first "name" instance which is the fourth hash in.
  @artist = artist_hash["metadata"]["artist_list"]["artist"][0]["name"]

  erb :artist


end
