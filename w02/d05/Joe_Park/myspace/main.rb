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

	# @friend = JSON(HTTParty.get(url))

	if @friend["error"]
		@message = "ERROR: Friend not found"
		erb :index
	else
		erb :friend
	end

	erb :friend
end



# api_return = JSON(HTTParty.get(url))
#           "id" => "16320932",
#     "first_name" => "Joe",
#         "gender" => "male",
#      "last_name" => "Park",
#         "locale" => "en_US",
#           "name" => "Joe Park",
#       "username" => "JDMGuren"