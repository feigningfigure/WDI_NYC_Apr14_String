require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'
require 'json'
require 'musicbrainz'
require 'soundcloud'
require 'lastfm'
require 'scrobbler'



MusicBrainz.configure do |c|
  # Application identity (required)
  c.app_name = "My Music App"
  c.app_version = "1.0"
  c.contact = "support@mymusicapp.com"

end

get '/' do

  erb :index
end

get '/artist' do
  artist = params[:artist]


  @result = MusicBrainz::Artist.find_by_name(artist)
   @artist_id = @result.id

  artist_1_url  = "http://ws.audioscrobbler.com/2.0/?method=artist.getinfo&mbid=#{@artist_id}&api_key=da7c3b0db0f9cd1e70863ff976434ed5&format=json"
  @artist_1 = HTTParty.get(artist_1_url)

artist_1_albums_url  = "http://ws.audioscrobbler.com/2.0/?method=artist.gettopalbums&mbid=#{@artist_id}&api_key=da7c3b0db0f9cd1e70863ff976434ed5&format=json"
  @artist_1_albums  = HTTParty.get(artist_1_albums_url)


  client = Soundcloud.new(:client_id => '73b9f173ae5ddbfd481c5bc5d4c07a7e')

  clean_artist_name = artist.split(' ').join('').downcase
  # get a tracks oembed data
  track_url = "http://soundcloud.com/#{clean_artist_name}"
  @embed_info = client.get('/oembed', :url => track_url)
  @embed_player_html = @embed_info["html"]






  erb :artist


end

api_key = "da7c3b0db0f9cd1e70863ff976434ed5"
api_secret = "728d4e70e151f94923e7a7cdf3f2f04a"


# API Key: da7c3b0db0f9cd1e70863ff976434ed5
# Secret: is 470618322d1d3ba0293261f6f3959f22
