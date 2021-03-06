require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'pry'
require 'json'
require 'soundcloud'
require 'musicbrainz'
require 'lastfm'

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
    #Create HASH of top result in JSON
    artist_hash = artist_json["metadata"]["artist_list"]["artist"][0]
    # Set instance variables
    @id = artist_hash["id"]
    @name = artist_hash["name"]
    @country = artist_hash["area"]["name"]
    @url = artist_hash["url"]

 
  artist_1_url  = "http://ws.audioscrobbler.com/2.0/?method=artist.getinfo&mbid=#{@id}&api_key=0f24ee5b7c24a21c0e32d8599ba0596a&format=json"
  @artist_1 = HTTParty.get(artist_1_url)


  images_url = "http://ws.audioscrobbler.com/2.0/?method=artist.gettopalbums&mbid=#{@id}&api_key=da7c3b0db0f9cd1e70863ff976434ed5&format=json" 
  @artist_albums = HTTParty.get(images_url)

  # album_hash = @artist_albums["topalbums"]["album"][0]["name"]



  client = Soundcloud.new(:client_id => '73b9f173ae5ddbfd481c5bc5d4c07a7e')

  clean_artist_name = params[:query].split(' ').join('').downcase
  # get a tracks oembed data
  track_url = "http://soundcloud.com/#{clean_artist_name}"
  @embed_info = client.get('/oembed', :url => track_url)
  @embed_player_html = @embed_info["html"]

    erb :artist
end


api_key = "0f24ee5b7c24a21c0e32d8599ba0596a"
api_secret = "728d4e70e151f94923e7a7cdf3f2f04a"




  # else
  #   @error = 'artist not found'
  # end

  # # ----SOUNDHOUND INFORMATION----
  # artist_1_url  = "http://ws.audioscrobbler.com/2.0/?method=artist.getinfo&mbid=#{@id}&api_key=0f24ee5b7c24a21c0e32d8599ba0596a&format=json"
  # @artist_1 = HTTParty.get(artist_1_url)

  # images_url = "http://ws.audioscrobbler.com/2.0/?method=artist.gettopalbums&mbid=#{@id}&api_key=da7c3b0db0f9cd1e70863ff976434ed5&format=json"
  # @artist_albums = HTTParty.get(images_url)

  # # album_hash = @artist_albums["topalbums"]["album"][0]["name"]

  # client = Soundcloud.new(:client_id => '73b9f173ae5ddbfd481c5bc5d4c07a7e')

  # clean_artist_name = params[:query].split(' ').join('').downcase
  # # get a tracks oembed data
  # track_url = "http://soundcloud.com/#{clean_artist_name}"
  # @embed_info = client.get('/oembed', :url => track_url)
  # @embed_player_html = @embed_info["html"]

# ----WIKIPEDIA SUMMARY---- (NEEDS WORK)
  # artist = params[:artist].gsub(" ", "%20")
  # url = "http://en.wikipedia.org/w/api.php?action=query&prop=extracts&format=xml&exintro=&titles=#{artist}"
  # # Get the XML Data
  # wiki_xml = HTTParty.get(url)
  # # Parse XML to JSON
  # wiki_json = wiki_xml.parsed_response
  # #Create HASH of top result in JSON
  # @artist_summary = wiki_json["api"]["query"]["pages"]["page"]["extract"]

  # ----Check for results found (NOT WORKING)----

  # count = []
  # count << artist_json.each["metadata"]["artist"][0]["id"]

  # ----SET VARIABLES ONLY IF RESULTS ARE FOUND (NOT WORKING)----
  # if count != 0
  # Set instance variables
  # Set ID
  erb :results

end


# api_key = "0f24ee5b7c24a21c0e32d8599ba0596a"
# api_secret = "728d4e70e151f94923e7a7cdf3f2f04a"

  # ----SEARCH BY SONG----

  # song = params[:song].gsub(" ", "%20").to_s
  # url = "http://musicbrainz.org/ws/2/recording?query=#{song}"
  #   # Get the XML Data
  # recordings_xml = HTTParty.get(url)
  # # Parse XML to JSON
  # recordings_json = recordings_xml.parsed_response
  # #Create HASH of top result in JSON
  # @recording_hash = recordings_json["metadata"]["recording_list"]["recording"][0]
  # # Set instance variables
  # # @title = recording_hash["title"]
  # erb :results


