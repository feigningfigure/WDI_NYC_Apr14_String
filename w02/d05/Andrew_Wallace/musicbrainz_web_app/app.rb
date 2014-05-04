require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'pry'
require 'json'
require_relative 'SANDBOX'

get "/" do
  erb :index
end

get '/artist/' do
  query = params[:query].gsub(" ", "%20")
  url = "http://musicbrainz.org/ws/2/artist/?query=#{query}"
  # Get the XML Data
  artist_xml = HTTParty.get(url)
  # Parse XML to JSON
  artist_json = artist_xml.parsed_response
  # Create HASH data on artist from JSON
  @artist_hash = artist_json["metadata"]["artist_list"]["artist"][0]
  @id = @artist_hash["id"]
  @name = @artist_hash["name"]
  @country = @artist_hash["area"]["name"]
  erb :artist
end
