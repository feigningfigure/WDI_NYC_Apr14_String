require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'
require 'json'

get '/' do

	erb :index
end

get '/friend' do
	username = params[:username]

	url = "http://graph.facebook.com/#{username}"
	friend_json = HTTParty.get(url) 
	@friend = JSON(friend_json) 

	profile_picture = HTTParty.get("http://graph.facebook.com/#{username}?fields=picture")
  @profile_picture_hash = JSON(profile_picture)

	if @friend["error"]
		@message = @friend["error"]["message"]
		erb :index
	else
		erb :friend 
	end

end