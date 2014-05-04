require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'
require 'json'
require 'musicbrainz'
require 'soundcloud'
require 'lastfm'



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
  # @artist_id = @result.id

  # artist_1_url  = "http://musicbrainz.org/ws/2/artist/#{@artist_id}?inc=aliases&fmt=json"
  # @artist_1 = HTTParty.get(artist_1_url)


  client = Soundcloud.new(:client_id => '73b9f173ae5ddbfd481c5bc5d4c07a7e')

  clean_artist_name = artist.split(' ').join('').downcase
  # get a tracks oembed data
  track_url = "http://soundcloud.com/#{clean_artist_name}"
  @embed_info = client.get('/oembed', :url => track_url)
  @embed_player_html = @embed_info["html"]

  erb :artist
  # profile_picture = HTTParty.get("http://graph.facebook.com/#{username}?fields=picture")
  # @profile_picture_hash = JSON(profile_picture)

  # if @friend["error"]
  #   @message = @friend["error"]["message"]
  #   erb :index
  # else
  #   erb :friend
  # end
end

api_key = "0f24ee5b7c24a21c0e32d8599ba0596a"
api_secret = "728d4e70e151f94923e7a7cdf3f2f04a"

