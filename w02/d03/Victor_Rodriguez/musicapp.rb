
require 'sinatra'
require 'sinatra/reloader'
require 'musicbrainz'
require 'pry'
require 'httparty'
require 'json'

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
  erb :m_index
end

get '/search' do
  @artist_search = params[:artist_search]
  erb :search
end
