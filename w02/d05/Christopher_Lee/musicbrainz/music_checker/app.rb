require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
# require 'echowrap'
require 'pry'
require 'rdio_api'

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

def itunes_api_return(album_name, artist_name)
    search_friendly_album_name = album_name.encode(Encoding.find('ASCII'),:undef=>:replace,:replace => "%27")
    album_look_up = HTTParty.get("https://itunes.apple.com/search?term=#{search_friendly_album_name}&media=music&music=album&musicArtist=#{artist_name}")
    unless JSON(album_look_up)["resultCount"] == 0
      album_art = JSON(album_look_up)["results"][0]["artworkUrl100"]
    end
end

def last_fm_image_return(artist_name,album_name)
  search_friendly_album_name = album_name.encode(Encoding.find('ASCII'),:undef=>:replace,:replace => "%27")
  search = HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=album.search&artist=#{artist_name}&album=#{search_friendly_album_name}&api_key=4feb802c67b65c876f49cfae2463ca30&format=json")
  album_results = search["results"]["albummatches"]["album"]
   @album_image = []
  if album_results.is_a? Hash
    @album_image << album_results
  else
    binding.pry
    album_results.each_with_index do |album, index|
      if album_results[index]["artist"].downcase == (artist_name.split("+").join(" ").downcase) && (album_results[index]["name"].downcase) == (album_name.split("+").join(" ").downcase)
        @album_image << album_results[index]
      end
    end
  end
  puts "#{album_name} worked"
  @album_image[0]
end

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

  client = RdioApi.new(:consumer_key => "ww2aaagaw3jcj632gm53hy5m", :consumer_secret => "MsWVVNUrZj")
  #Find Key
  search = client.search(:query=>"#{params[:artist_name]}", :types =>"Artist")
  # @search = client.search(:query=>"snoop dogg", :types=>"Artist")
  #introduce error checking here
  artist_key = search["results"][0]["key"]

  sorted_albums = client.getAlbumsForArtist(:artist =>"#{artist_key}",:sort => "releaseDate")
  @sorted_albums = sorted_albums.uniq{|h| h["releaseDate"]}.uniq{|h| h["name"]}
  # @sorted_albums = client.getAlbumsForArtist(:artist =>"#{artist_key}").uniq{|h| h["name"]}
  @result = @sorted_albums[0]["name"]
  @image = last_api_return(artist_name)
  erb :search
end





# get '/search' do
#   artist_name = params[:artist_name]
#     if artist_name.split.length > 1
#       artist_name = artist_name.split.join("+")
#     end
#   api_search = HTTParty.get("http://musicbrainz.org/ws/2/artist/?query=artist:#{artist_name}")

#   artist_list = api_search["metadata"]["artist_list"]["artist"]

#   # add an if else to get the approximation. maybe use gem here?
#   artist_list.each do |artist_hash|
#     if artist_hash["score"] == "100"
#       @artist_hash = artist_hash
#     end
#   end

#   artist_id = @artist_hash["id"]
#   #### look up albums
#   release_list = HTTParty.get("http://musicbrainz.org/ws/2/release/?query=arid:#{artist_id}")["metadata"]["release_list"]["release"]
#   # album_title_temp = release_list[0]["title"].split.join("+")
#   ######
#   album_title_array = []
#   release_list.each do |release|
#     album_title_array << release["title"].split.join("+")#.encode(Encoding.find('ASCII'),:undef=>:replace,:replace => '')
#   end

#   @album_art_array = []
#   album_title_array.each do |album_title|
#     @album_art_array << last_fm_image_return(artist_name,album_title)
#   end

#   # @album_art_array = []
#   # album_title_array.each do |album_title|
#   #     @album_art_array << itunes_api_return(album_title, artist_name)
#   # end

#   @image = last_api_return(artist_name)
#   erb :search
# end

# <%  @album_art_array.each do |album| %>
#   <img src= "<%= album %>">
# <% end %>
# <%=  @album_art_array %>

# use gem instead of complicated api call for discography

# <%  @sorted_albums.each do |album| %>
#     <img src= "<%= album["icon"] %>">
#   <% end %>
#  <%=  @album_art_array %>
