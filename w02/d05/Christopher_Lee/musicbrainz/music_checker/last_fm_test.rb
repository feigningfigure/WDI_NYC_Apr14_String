require 'httparty'

album_title_array = [
     "The+Pious+Bird+of+Good+Omen",
     "The+Best+of+the+Original+Fleetwood+Mac",
     "Tango+in+the+Night",
     "Future+Games",
     "Bare+Trees",
     "The+Original+Fleetwood+Mac",
     "Mr.+Wonderful",
     "Peter+Green’s+Fleetwood+Mac",
     "English+Rose",
     "Peter+Green’s+Fleetwood+Mac",
     "Then+Play+On",
     "Fleetwood+Mac+in+Chicago",
     "Fleetwood+Mac+in+Chicago",
     "Blues+Jam+at+Chess",
     "Fleetwood+Mac",
     "The+Very+Best+of+Fleetwood+Mac",
     "Live+at+the+BBC",
     "Boston+Blues",
     "Rhiannon",
     "Seven+Wonders",
     "Family+Man",
     "Rumours",
     "Big+Love",
     "Rumours",
     "The+Boston+Box"
]


def last_fm_image_return(artist_name,album_name)
  search_friendly_album_name = album_name.encode(Encoding.find('ASCII'),:undef=>:replace,:replace => "%27")
  search = HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=album.search&artist=#{artist_name}&album=#{search_friendly_album_name}&api_key=4feb802c67b65c876f49cfae2463ca30&format=json")
  album_results = search["results"]["albummatches"]["album"]
   @album_image = []
  if album_results.is_a? Hash
    @album_image << album_results
    # @album_image
  else
    album_results.each_with_index do |album, index|
      if album_results[index]["artist"].downcase == (artist_name.split("+").join(" ").downcase) && (album_results[index]["name"].downcase) == (album_name.split("+").join(" ").downcase)
        @album_image << album_results[index]
      end
    end
    # @album_image[0]
  end
  puts "#{album_name} worked"
  @album_image[0]
end


artist_name = "fleetwood+mac"

@album_art_array = []
  album_title_array.each do |album_title|
    @album_art_array << last_fm_image_return(artist_name,album_title)
  end

puts @album_art_array


# last_fm_image_return("fleetwood+mac","Peter+Green%27s+Fleetwood+Mac")

# "Peter+Green’s+Fleetwood+Mac".gsub("’", "%27")

# "Peter+Green’s+Fleetwood+Mac".encode(Encoding.find('ASCII'),:undef=>:replace,:replace => "%27")

# search = HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=album.search&artist=fleetwood+mac&album=Peter+Green’s+Fleetwood+Mac&api_key=4feb802c67b65c876f49cfae2463ca30&format=json")


# testing different logic: can you point towards the each w/ index if album results is > 1
# the deal
# initial_search for a single result:


# def last_fm_image_return(artist_name,album_name)
#   search = HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=album.search&artist=#{artist_name}&album=#{album_name}&api_key=4feb802c67b65c876f49cfae2463ca30&format=json")
#   album_results = search["results"]["albummatches"]["album"]
#   @album_image = []
#   if album_results.size > 1
#     album_results.each_with_index do |album, index|
#       if album_results[index]["artist"].downcase == (artist_name.split("+").join(" ").downcase) && (album_results[index]["name"].downcase) == (album_name.split("+").join(" ").downcase)
#         @album_image << album_results[index]
#       end
#     end
#     @album_image = @album_image[0][0]
#   else
#     @album_image << album_results
#     @album_image
#   end
# end


# last_fm_image_return("fleetwood+mac", "The+Pious+Bird+of+Good+Omen")
# last_fm_image_return("fleetwood+mac","The+Best+of+the+Original+Fleetwood+Mac")

# ### 1
# search = HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=album.search&artist=fleetwood+mac&album=The+Pious+Bird+of+Good+Omen&api_key=4feb802c67b65c876f49cfae2463ca30&format=json")

#   initial_search = search["results"]["albummatches"]

#   # initial_search.size = 1

#   album_results = search["results"]["albummatches"]["album"]
#   # album_results.size 7

#   # album_results.keys.count 7

#   album_results.is_a? Hash
#   # true !!!!!!!!!!!!!!!!!!


# ### 2
# search = HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=album.search&artist=fleetwood+mac&album=The+Best+of+the+Original+Fleetwood+Mac&api_key=4feb802c67b65c876f49cfae2463ca30&format=json")

# initial_search = search["results"]["albummatches"]

# # initial_search.size = 1

# album_results = search["results"]["albummatches"]["album"]

# # album_results.size = 2

# album_results.is_a? Hash
# # false
