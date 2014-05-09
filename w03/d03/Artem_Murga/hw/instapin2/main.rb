require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pg'
require 'httparty'
require 'pry'

require_relative 'models/photo'
require_relative 'lib/imgur'

ActiveRecord::Base.establish_connection({
  database: "photo",
  adapter: "postgresql"
})



get '/' do 

	
	httpparty_object = HTTParty.get("https://api.instagram.com/v1/tags/girls/media/recent?client_id=ae45c93f07a44b689a39d3410bda4c8b")
	json_object = JSON.parse(httpparty_object.body)
	third_pic_raw = json_object["data"][3]["images"]["standard_resolution"]["url"]
	random_pic_raw = json_object["data"].sample
	@target_url = random_pic_raw["images"]["standard_resolution"]["url"]
	# binding.pry
	erb :index
end

post '/save' do
	
	url = params[:url]
	Photo.create(url: url)
	redirect "/"
	
end

get '/gallery' do 

	@all_photos = Photo.all

	erb :gallery
end

post '/delete' do 

	#binding.pry
	Photo.destroy(params["id"])

	redirect "/gallery"

end



