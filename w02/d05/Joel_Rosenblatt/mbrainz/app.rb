require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'
require 'json'
require 'musicbrainz'

MusicBrainz.configure do |c|
  # Application identity (required)
  c.app_name = "My Music App"
  c.app_version = "1.0"
  c.contact = "support@mymusicapp.com"

  # Cache config (optional)
  c.cache_path = "/tmp/musicbrainz-cache"
  c.perform_caching = true

  # Querying config (optional)
  c.query_interval = 1.2 # seconds
  c.tries_limit = 2
end

get '/' do
  erb :index
end

get '/search' do
  @artist_search = params[:artist_search]
  @artist_info = MusicBrainz::Artist.find_by_name(@artist_search)
  @name = @artist_info.name
  @id = @artist_info.id
  @wiki = @artist_info.urls[:wikipedia]
  erb :search
end
