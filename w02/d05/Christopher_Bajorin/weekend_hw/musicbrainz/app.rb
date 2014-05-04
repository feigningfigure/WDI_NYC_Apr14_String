require 'sinatra'
require 'sinatra/reloader'
require 'JSON'
require 'HTTParty'
require 'pry'
require 'musicbrainz'

MusicBrainz.configure do |c|
  # Application identity (required)
  c.app_name = "My Music App"
  c.app_version = "1.0"
  c.contact = "support@mymusicapp.com"

end


get '/' do
  erb :index
end

get '/search' do
  @search = params[:search]
  @suggestion_array = MusicBrainz::Artist.search(@search.to_s)

  erb :search
end

get '/artist/:id' do
  artist_id = params[:id]
  url = "http://www.musicbrainz.org/ws/2/artist/#{artist_id}?inc=release-groups"
  artist_hash = HTTParty.get(url)
  @artist_hash = artist_hash["metadata"]["artist"]
  albums = @artist_hash["release_group_list"]

  @non_comps = []
  @comps = []
  if albums["count"].to_i == 1
      @single_album = albums["release_group"]
  elsif albums["count"].to_i == 0
    @no_data = "No data available"
  elsif albums["count"].to_i > 1
    albums["release_group"].each do |index|
      # binding.pry
      if index.has_key?("secondary_type_list") == false
        @non_comps << index
      else
        @comps << index
      end
    end

  end


  erb :artist
end


get '/:name/albums/:album_id' do
  album_id = params[:album_id]
  url = "http://www.musicbrainz.org/ws/2/release-group/#{album_id}?inc=releases"
  release_list = HTTParty.get(url)

  top_release = release_list["metadata"]["release_group"]["release_list"]

  if top_release["count"].to_i == 0
  erb :shits_broken_yo
  elsif top_release["count"].to_i == 1
    temp_id = top_release["release"]["id"]
    url = "http://www.musicbrainz.org/ws/2/release/#{temp_id}?inc=recordings"
    release_hash = HTTParty.get(url)
  else
    temp_id = top_release["release"][0]["id"]
    url = "http://www.musicbrainz.org/ws/2/release/#{temp_id}?inc=recordings"
    release_hash = HTTParty.get(url)
  end
  @title = release_hash["metadata"]["release"]["title"]

  @disc = release_hash["metadata"]["release"]["medium_list"]

  erb :album


end
