
require "bundler"

get '/' do
erb: index
end


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

# Search for artists
@suggestions = MusicBrainz::Artist.search("Jet")

# Find artist by name or mbid
@foo_fighters = MusicBrainz::Artist.find_by_name("Foo Fighters")
@kasabian = MusicBrainz::Artist.find("69b39eab-6577-46a4-a9f5-817839092033")

# Use them like ActiveRecord models
@empire_tracks = @kasabian.release_groups[8].releases.first.tracks

get '/search' do
  @artist_search = params[:artist_search]
  erb :search
end

def seed
  1000.times.do
  add_student (Faker::Name.first_name, Fake::Name.last_name, )