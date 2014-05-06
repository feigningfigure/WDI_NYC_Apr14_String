require 'bundler'
Bundler.require

MusicBrainz.configure do |c|
  # Application identity (required)
  c.app_name = "My Music App"
  c.app_version = "1.0"
  c.contact = "support@http://mymusicapp.com"

end

get '/' do

	erb :index
end

get '/search' do

  @search = params[:search]
  @suggestions_array = MusicBrainz::Artist.search(@search.to_s)

	erb :search

end

get '/:artist/:id' do

  @artist_name = params[:artist]

  url = "http://musicbrainz.org/ws/2/artist/#{params[:id]}?inc=release-groups"
  main_hash = HTTParty.get(url)
  @album_array = main_hash["metadata"]["artist"]["release_group_list"]["release_group"]



erb :artist

end



