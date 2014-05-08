require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pg'
require 'httparty'
require 'pry'
require 'json'
# establishes connection once and for all...
ActiveRecord::Base.establish_connection({
  database: "still_life",
  adapter: "postgresql"
})

require_relative 'lib/instagram'
require_relative 'models/photo'

# MODELS


get '/' do
	# @photos = Photo.all
	# @result = @photos.popular_url
	#syntactic sugar for lines above
	@results = Instagram.popular_url

	erb :index
end

get '/photos/new' do
	@choice = params[:img_url]
	erb :new
end

get '/photos/search' do
	@collection = Photo.all
	erb :search
end

get '/photos/show' do
	photos_id = params[:id]
	@photo = Photo.find(photos_id)

	erb :show
end

get '/photos/:id/delete' do
	photo_id = params[:id]
	# SELECT * FROM items WHERE id = '#{item_id}';
	photo = Photo.find(photo_id)
	photo.destroy
	redirect "/"
end


post '/photos' do
  # processes new post data
	title = params[:title]
	url = params[:url]
	description = params[:description]

	Photo.create(
		title: title,
		description: description,
		url: url
	)
	redirect "/"
	end


######  JOE PARK  #######



######  NANCY KO  #######


######  ANDREW WALLCE  #######
