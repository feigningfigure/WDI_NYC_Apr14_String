require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'pg'
require 'active_record'
require 'pry'

# require_relative 'lib/instagram'

ActiveRecord::Base.establish_connection({
  database: "mad_instastory",
  adapter: "postgresql"
})

get '/' do
  erb :index
end

get '/story' do
  #User's input
  @place = params[:place]
  @adjective = params[:adjective]
  @animal= params[:animal]
  @verb = params[:verb]
  @flower = params[:flower]

  #Instagram input
  erb :story
end



#Instagram popular images
def result
result = HTTParty.get("https://api.instagram.com/v1/media/popular?client_id=0781c2e3fde74d18acf2a856eb0c2de2")
  return result
end

#Returns any tag
# def tags

def tags
tags_hash = result["data"][1]["tags"]
tags_hash.each do |k,v|
  puts v
  end
end

# return @tags
# end

# end
#When the image was created
# def created_time
def created_time
created_time = result["data"][1]["created_time"]
end
#Description of the image
def text
text = result["data"][1]["caption"]["text"]
end

#The IMAGE !!!!!
def image_url
image_url = result["data"][1]["images"]["standard_resolution"]["url"]
end
#user's full name
def username
username = result["data"][1]["caption"]["from"]["full_name"]
end

#image location ???????
#Create a database of images that have location name and url
#loop through and see how many image has location that is not NIL or empty []
# location = result["data"][19]["location"]["name"]

#count = how many friends who likes her
def count
count = result["data"][1]["likes"]["count"]
end

# end

# post '/story' do

#   @place = params[:place]
#   @adjective = params[:adjective]

#   redirect "/story"
# end




