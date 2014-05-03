require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
# require 'echowrap'
require 'pry'

# Echowrap.configure do |config|
#   config.api_key =      'EYWYMJLC2MMGVFF1C '
#   config.consumer_key =  'e6d40262e3b1824bbcc164a93a46742f '
#   config.shared_secret = 'GdgdbUa2SNWQ7taOh+scuQ'
# end

get '/' do
  "Hello World!"
  erb :index
end

def last_api_return(artist_name)
  json_from_last = HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=artist.getinfo&artist=#{artist_name}&api_key=4feb802c67b65c876f49cfae2463ca30&format=json")
  return json_from_last["artist"]["image"][3]["#text"]
end

def itunes_api_return


end

get '/search' do
  artist_name = params[:artist_name]
    if artist_name.split.length > 1
      artist_name = artist_name.split.join("+")
    end
  api_search = HTTParty.get("http://musicbrainz.org/ws/2/artist/?query=artist:#{artist_name}")

  artist_list = api_search["metadata"]["artist_list"]["artist"]

  artist_list.each do |artist_hash|
    if artist_hash["score"] == "100"
      @artist_hash = artist_hash
    end
  end
  artist_id = @artist_hash["id"]
  #### look up albums
  release_list = HTTParty.get("http://musicbrainz.org/ws/2/release/?query=arid:#{artist_id}")["metadata"]["release_list"]["release"]
  # album_title_temp = release_list[0]["title"].split.join("+")
  ######
  album_title_array = []
  release_list.each do |release|
    album_title_array << release["title"].split.join("+")
  end

  # look up album in itunes
  album_look_up = HTTParty.get("https://itunes.apple.com/search?term=#{album_title_temp}&media=music&music=album&musicArtist=#{artist_name}")
  # @album_art = JSON(album_look_up)["results"][0]["artworkUrl100"]
  # will just be a hash containing the results
  # we will cycle through and look up the ["artworkUrl100"] url which will then be an image
  @album_art = JSON(album_look_up)["results"]

  ########
  @image = last_api_return(artist_name)
  erb :search
end
