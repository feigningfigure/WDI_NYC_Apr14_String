require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'
require 'json'

get '/' do

	erb :index
end


# we set the key in index.erb. once the program knows what the key is, it knows how to assign the value
# it will make the key and value
# http://localhost:4567/friend?username=sophie+laffont
# in this original before any formatting. url the key is username and the value is sophie laffont

get '/friend' do
	username = params[:username]
	# in this case we would have to type exactly the user's name
	url = "http://graph.facebook.com/#{username}"
	# this will return a json object we need to parse
	friend_json = HTTParty.get(url)
	friend = JSON(friend_json) # creating a hash

	binding.pry
end

