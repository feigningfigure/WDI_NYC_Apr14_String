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

	if @friend["error"] #error is specific to facebook parameters
		@message ="Error: Friend not found."
		erb :index
	else
		erb :friend
	end

end

