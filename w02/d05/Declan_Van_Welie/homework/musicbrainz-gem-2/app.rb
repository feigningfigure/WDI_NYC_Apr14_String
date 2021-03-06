 # - Build an interface for the api where a user can submit an artist
 #  - Artist information is displayed to the user

require 'musicbrainz'
require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'

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

@artist_itunes = urls_hash[:purchase_for_download]#.gsub("https://commons.wikimedia.org/wiki/File:","")

@urls = urls_hash[:wikipedia]

@all_urls = urls_hash

@album_title = MusicBrainz::ReleaseGroup.search(params[:artist_name], params[:album_name])[0][:title]

@album_info = MusicBrainz::ReleaseGroup.search(params[:artist_name], params[:album_name])[0][:first_release_date]

@album_id = MusicBrainz::ReleaseGroup.search(params[:artist_name], params[:album_name])[0][:id]
#An attempt to call release instead of releases
@release_hash = MusicBrainz::Release.find("#{@album_id}")

#This removes the spaces in an album containing two words
art_query = params[:album_name].gsub(" ","%20")

album_get = HTTParty.get("http://musicbrainz.org/ws/2/release?query=#{art_query}")

album_id = album_get["metadata"]["release_list"]["release"][0]["id"]

cover_get = HTTParty.get("http://coverartarchive.org/release/#{album_id}")

# Setup an if/then statement to return an error message if the cover art isn't found...
# if cover_get != "nil" do

@cover_art_hash = cover_get["images"][0]["image"]

album_track_id = MusicBrainz::Release.find(album_id)

@track_listing = album_track_id.tracks

# art_get = HTTParty.get("http://coverartarchive.org/release/#{album_id}")

#News info for artist:
artist_id = MusicBrainz::Artist.find_by_name(params[:artist_name]).id

news = HTTParty.get("http://developer.echonest.com/api/v4/artist/news?api_key=EBLX2UUAZCVMFN3IC&id=musicbrainz:artist:#{artist_id}&format=json")
@artist_news = news["response"]["news"][0]["name"]
# @news["response"]["news"][0]["date_found"]
@artist_news_summary = news["response"]["news"][0]["summary"]

#artist image attempt:

image = HTTParty.get("http://developer.echonest.com/api/v4/artist/images?api_key=EBLX2UUAZCVMFN3IC&id=musicbrainz:artist:#{artist_id}&format=json&results=1&start=0&license=unknown")
@artist_image = image["response"]["images"][0]["url"]

#An attempt to call a video:

video = HTTParty.get("http://developer.echonest.com/api/v4/artist/video?api_key=EBLX2UUAZCVMFN3IC&id=musicbrainz:artist:#{artist_id}&format=json&results=1&start=0")
artist_video = video["response"]["video"][0]["url"]

youtube1 = artist_video.gsub("&feature=youtube_gdata_player", "")
@youtube2 = youtube1.gsub("watch?v=", "embed/")

# artist_video = video["response"]["video"][0]["url"]
# youtube1 = artist_video.gsub("&feature=youtube_gdata_player", "")
# @youtube2 = youtube1.gsub("watch?v=", "embed/")

# @album_id = album_hash.title

# @id = MusicBrainz::Artist.find_by_name(params[:album_name])[:id]

# release_id = MusicBrainz::Release.find(id).id

# @cover_hash = HTTParty.get("http://musicbrainz.org/release/#{album_id}")

# @cover_art = cover_hash#["images"][image]
# @urls = MusicBrainz::Artist.find_by_name(params[:artist_name]).urls


erb :artist_info

end


  # friend_json = HTTParty.get(url)
