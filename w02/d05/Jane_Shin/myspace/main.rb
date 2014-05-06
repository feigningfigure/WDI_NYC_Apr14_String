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

#strict evalution, boolean conditional is very common
	if @friend["error"]
		@message = "ERROR: Friend not found!"
		erb :index
	else
		erb :friend
	end
end