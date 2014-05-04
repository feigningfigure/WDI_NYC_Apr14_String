require 'sinatra'
require 'sinatra/reloader'
require 'MusicBrainz'


MusicBrainz.configure do |c|
  # Application identity (required)
  c.app_name = "My Music App"
  c.app_version = "1.0"
  c.contact = "support@mymusicapp.com"
end

get '/' do
erb :index
end


get '/results' do
# @artist = MusicBrainz::Artist.search(params[:artist])
# hash = JSON.parse(@artist)
# @band = hash["name"]
erb :results
end
