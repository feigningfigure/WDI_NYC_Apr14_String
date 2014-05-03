require 'sinatra'
require 'sinatra/reloader'
require 'HTTParty'
require 'pry'
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
  @search = params[:search]
  @suggestion_array = MusicBrainz::Artist.search(@search.to_s)
  # @suggestion_names = []

  # @suggestion_array.each do |index|
  #   name = index[:name]
  #   @suggestion_names << name
  #   id = index[:mbid]
  #   @suggestion_id  << id
  # end

  # puts @suggestion_names
  erb :search
end

get '/artist/:id' do
  puts "hello #{params[:id]}"


end

=begin

  artist = {
    name: @name

  }


=end
