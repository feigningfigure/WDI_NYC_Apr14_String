require 'sinatra'
require 'sinatra/reloader'
require 'MusicBrainz'
require 'pry'
require 'HTTParty'
require 'wikipedia'



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

Wikipedia.Configure {
  domain 'en.wikipedia.org'
  path   'w/api.php'
}



get '/' do
erb :index
end


get '/results' do
@artist_wiki=(params[:artist])
@artist = MusicBrainz::Artist.find_by_name(params[:artist])
@urls=@artist.urls
@bio = @urls[:wikipedia]
# @final_bio = @bio[1]
@bio_url = HTTParty.get("#{@bio}")
@wiki_page = Wikipedia.find("#{@artist_wiki}")
@images=@wiki_page.image_descriptionurls
@image=@images[0]
# @artist_name = @artist_key[:name]
# @artist_key = @artist[0]
# @artist_id = @artist_key[:id]
# @discography = MusicBrainz::Artist.discography(@artist_id)

# @art_title = MusicBrainz::ReleaseGroup.find_by_artist_and_title(params[:artist], "Back in Black")
# @name = @artist_name[:name]
# @results=HTTParty.get("http://musicbrainz.org/artist/#{@art[:id]}"
# @artist_results = JSON(@artist_page)
erb :results
end
