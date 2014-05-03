require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'echowrap'
require 'pry'

Echowrap.configure do |config|
  config.api_key =      'EYWYMJLC2MMGVFF1C '
  config.consumer_key =  'e6d40262e3b1824bbcc164a93a46742f '
  config.shared_secret = 'GdgdbUa2SNWQ7taOh+scuQ'
end

get '/' do
  "Hello World!"
  erb :index
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
  image = Echowrap.artist_images(:name => params[:artist_name],:results => 1 )
  @image = image[0].url
  erb :search
end
