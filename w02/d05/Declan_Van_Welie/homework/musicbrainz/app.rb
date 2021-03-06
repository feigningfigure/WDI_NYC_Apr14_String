 # - Build an interface for the api where a user can submit an artist
 #  - Artist information is displayed to the user

require 'musicbrainz'
require 'pry'
require 'sinatra'
require 'sinatra/reloader'

MusicBrainz.configure do |c|
  c.app_name = "AppTest"
  c.app_version = "1.0"
  c.contact = "liz.cira.goldstein@http://gmail.com"

end


get '/' do
erb :index
end

# puts MusicBrainz::ReleaseGroup.find_by_artist_and_title("beatles","revolver",type=nil)
#The below will print the artist name. Calling the other keys will return their values: {
  # :id         => String,
  # :type       => String,
  # :name       => String,
  # :country    => String,
  # :date_begin => Date,
  # :date_end   => Date,
  # :urls       => Hash

  post '/artist_info' do


#The below works to print the user input:
# @name = params[:artist_name]

@name = MusicBrainz::Artist.find_by_name(params[:artist_name]).name
@country = MusicBrainz::Artist.find_by_name(params[:artist_name]).country

@date_begin = MusicBrainz::Artist.find_by_name(params[:artist_name]).date_begin

urls_hash = MusicBrainz::Artist.find_by_name(params[:artist_name]).urls

@urls = urls_hash[:wikipedia]
# @urls = MusicBrainz::Artist.find_by_name(params[:artist_name]).urls

erb :artist_info

end


  # friend_json = HTTParty.get(url)
