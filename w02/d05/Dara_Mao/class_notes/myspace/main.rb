require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'
require 'json'

get '/'  do

  erb :index
end

get '/friend' do
  username = params[:username] #after this we get what we did with API in pry
  url = "http://graph.facebook.com/#{username}"
  friend_json = HTTParty.get(url)
  @friend = JSON(friend_json)

  if @friend["error"]
    @message = "ERROR: Friend not found"
    erb :index #it will redirect to the index page so user could enter another time
  else
    erb :friend
  end
end

#in pry, boolean true returns "ERROR", false "nope. that worked"
# if api_return["error"]
#   puts "ERROR"
# else
#   puts "nope. that worked"
# end
