require 'sinatra'
require 'sinatra/reloader'
require 'musicbrainz'
require 'pry'

MusicBrainz.configure do |c|

  c.app_name = "My Music App"
  c.app_version = "1.0"
  c.contact = "support@mymusicapp.com"

end

get '/' do
	erb :index
end

get '/results' do
	artist = params[:artist].to_s
	@options = params[:options]
	@artist_info = MusicBrainz::Artist.find_by_name(artist)

	limit = @artist_info.release_groups.length
	@album = []
	@compilation = []
	@ep = []
	@live = []
	@single = []
	@misc = []
	for counter in 0..limit-1
		info = @artist_info.release_groups[counter].id
		artist = MusicBrainz::ReleaseGroup.find(info)
		if artist.type == "Album"
			@album << artist.title
		elsif artist.type == "Compilation"
			@compilation << artist.title
		elsif artist.type == "EP"
			@ep << artist.title
		elsif artist.type == "Live"
			@live << artist.title
		elsif artist.type == "Single"
			@single << artist.title
		else 
			@misc << artist.title
		end

		@all = @album+@compilation+@ep+@live+@single+@misc
	end

	erb :results
end