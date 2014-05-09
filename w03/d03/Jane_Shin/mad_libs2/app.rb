require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'pg'
require 'active_record'
require 'pry'
# require 'geocoder'

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
  @place = params[:place].capitalize
  @adverb = params[:adverb]
  @animal= params[:animal]
  @container = params[:container]
  @verb = params[:verb]
  @flower = params[:flower]
  @celeb = params[:celeb]
  @room = params[:room].capitalize
  @flavor = params[:flavor]
  @figment_of_i = params[:figment_of_i]
  @food = params[:food]

  #Instagram input
  erb :story
end


#Instagram popular images
def result
  result = HTTParty.get("https://api.instagram.com/v1/media/popular?client_id=0781c2e3fde74d18acf2a856eb0c2de2")
  return result
end

# def tags
#   tags_hash = result["data"][1]["tags"]
#   tags_hash.each do |k,v|
#     puts v
#   end
# end

def created_time
  created_time = result["data"][1]["created_time"]
  time = []
  time = created_time.split('')
  new_time = [time[0], time[2], time[9], time[8]]
  final_time = new_time.join
end

def text
  text = result["data"][1]["caption"]["text"]
end


def image_url
  image_url = result["data"][1]["images"]["standard_resolution"]["url"]
end

def username
  username = result["data"][1]["caption"]["from"]["full_name"]
end

#image location ???????
#Create a database of images that have location name and url
#loop through and see how many image has location that is not NIL or empty []
# location = result["data"][1]["location"]["name"]

#count = how many friends who likes her
def count
  count = result["data"][1]["likes"]["count"]
end

# latitude = result["data"][1]["location"]["latitude"]
# longitude = result["data"][1]["location"]["longitude"]

# def location
#   geo_location = Geocoder.search("Mad Instastory Land", :bounds => [[32.1,-95.9], [44.9817, -93.2783]])
#   geo_result[0].data
#   result2 = geo_result[0].data
#   location = result2["formatted_address"]
# end

