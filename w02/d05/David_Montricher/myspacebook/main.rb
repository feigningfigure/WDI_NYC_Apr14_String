require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'
require 'json'

get '/' do
  erb :index
end

get '/friend' do
  # enter the username info to a variable for future use
  username = params[:username]
  # set the url to connect to the API
  url =  "http://graph.facebook.com/#{username}"
  #

  # variable JSON to retrieve a legible hash from API
  friend_json = HTTParty.get(url)
  # pass this pre-JSON data from API to variable to execute JSON
  @friend = JSON(friend_json)

  # conditional to handle errors in non-existent users/gibberish input. taking "error" hash key that facebook API returns
  if @friend["error"]
    @message = "Error: Friend or username not found"
    erb :index
  else
    erb :friend
  end

  # call the erb file 'friend' to be sent to localhost4567
  # erb :friend
end


=begin



end
