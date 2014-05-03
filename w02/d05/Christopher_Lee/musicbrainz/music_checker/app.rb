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
  @image = last_api_return(artist_name)
  # last_api_return = HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=artist.getinfo&artist=#{artist_name}&api_key=4feb802c67b65c876f49cfae2463ca30&format=json")
  # @image = last_api_return["artist"]["image"][3]["#text"]

  # image = Echowrap.artist_images(:name => params[:artist_name],:results => 1 )
  # @image = image[0].url
  erb :search
end


test = HTTParty.get("https://itunes.apple.com/search?term=Fleetwood%20Mac%20in%20Chicago&media=music&music=album&musicArtist=fleetwood%20mac")

JSON(test)["results"][0]["artworkUrl100"]
