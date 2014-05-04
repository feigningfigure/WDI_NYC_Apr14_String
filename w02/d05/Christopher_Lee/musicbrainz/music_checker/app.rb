require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
# require 'echowrap'
require 'pry'

# Echowrap.configure do |config|
#   config.api_key =      'EYWYMJLC2MMGVFF1C '
#   config.consumer_key =  'e6d40262e3b1824bbcc164a93a46742f '
#   config.shared_secret = 'GdgdbUa2SNWQ7taOh+scuQ'
# end

get '/' do
  "Hello World!"
  erb :index
end

def last_api_return(artist_name)
  json_from_last = HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=artist.getinfo&artist=#{artist_name}&api_key=4feb802c67b65c876f49cfae2463ca30&format=json")
  return json_from_last["artist"]["image"][3]["#text"]
end

#look up

#sting interpolate this
# http://ws.audioscrobbler.com/2.0/?method=album.getinfo&api_key=4feb802c67b65c876f49cfae2463ca30&mbid=b3b4bdef-871d-32fa-baef-9e88f3b8d84a&format=json
#spit out mbid instead of album names



def itunes_api_return(album_title, artist_name)
  # binding.pry
    album_look_up = HTTParty.get("https://itunes.apple.com/search?term=#{album_title}&media=music&music=album&musicArtist=#{artist_name}")
    unless JSON(album_look_up)["resultCount"] == 0
      album_art = JSON(album_look_up)["results"][0]["artworkUrl100"]
    end
end

# https://itunes.apple.com/search?term=peter+greens+fleetwood+mac&media=music&music=album&musicArtist=fleetwood+mac

def last_fm_image_return(artist_name,album_name)
    search = HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=album.search&artist=#{artist_name}&album=#{album_name}&api_key=4feb802c67b65c876f49cfae2463ca30&format=json")
    album_results = search["results"]["albummatches"]["album"]
    @album_image = []
    album_results.each do |item|
     #if item["name"].to_s == album_name.split("+").join(" ").downcase
      @album_image << item
      # puts result
    end
    @album_image.each do |item|
      if (item["name"].downcase) == (album_name.split("+").join(" ").downcase) && item["artist"].downcase == (artist_name.split("+").join(" ").downcase)
        @album_image.clear
        @album_image << item
      end
    end
    @album_image
end

# search = HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=album.search&album=peter+green's+fleetwood+mac&api_key=4feb802c67b65c876f49cfae2463ca30&format=json")

get '/search' do
  artist_name = params[:artist_name]
    if artist_name.split.length > 1
      artist_name = artist_name.split.join("+")
    end
  api_search = HTTParty.get("http://musicbrainz.org/ws/2/artist/?query=artist:#{artist_name}")

  artist_list = api_search["metadata"]["artist_list"]["artist"]

  artist_list.each do |artist_hash|
    if artist_hash["score"] == "100"
      @artist_hash = artist_hash
    end
  end
  artist_id = @artist_hash["id"]
  #### look up albums
  release_list = HTTParty.get("http://musicbrainz.org/ws/2/release/?query=arid:#{artist_id}")["metadata"]["release_list"]["release"]
  # album_title_temp = release_list[0]["title"].split.join("+")
  ######
  album_title_array = []
  release_list.each do |release|
    album_title_array << release["title"].split.join("+")#.encode(Encoding.find('ASCII'),:undef=>:replace,:replace => '')
  end

  @album_art_array = []
  album_title_array.each do |album_title|
    @album_art_array << last_fm_image_return(artist_name,album_title)
  end

  # @album_art_array = []
  # album_title_array.each do |album_title|
  #     @album_art_array << itunes_api_return(album_title, artist_name)
  # end

  @image = last_api_return(artist_name)
  erb :search
end

# <%  @album_art_array.each do |album| %>
#   <img src= "<%= album %>">
# <% end %>




def last_fm_image_return(artist_name,album_name)
    search = HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=album.search&artist=#{artist_name}&album=#{album_name}&api_key=4feb802c67b65c876f49cfae2463ca30&format=json")
    album_results = search["results"]["albummatches"]["album"]
    @album_image = []
    album_results.each_with_index do |album, index|
      # p album_results[index]["name"].downcase
      if album_results[index]["artist"].downcase == (artist_name.split("+").join(" ").downcase) && (album_results[index]["name"].downcase) == (album_name.split("+").join(" ").downcase)
        # p "you win at #{index}"
        @album_image << album_results[index]
      end
    end
    @album_image
end

# use gem instead of complicated api call for discography

search = HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=album.search&artist=fleetwood+mac&album=seven+wonders&api_key=4feb802c67b65c876f49cfae2463ca30&format=json")
