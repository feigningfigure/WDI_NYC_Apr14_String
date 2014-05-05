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


album_look_up = HTTParty.get("https://itunes.apple.com/search?term=Fleetwood+Mac+in+Chicago&media=music&music=album&musicArtist=fleetwood+mac")


client = RdioApi.new(:consumer_key => CONSUMER_KEY, :consumer_secret => CONSUMER_SECRET)

ww2aaagaw3jcj632gm53hy5m
Shared Secret:
MsWVVNUrZj


client = RdioApi.new(:consumer_key => "ww2aaagaw3jcj632gm53hy5m", :consumer_secret => "MsWVVNUrZj")


Wu tang - find artist
client.search(:query=>"Wu Tang","types"=>"Artist")

Wu Tang Albums - sorted by date
client.getAlbumsForArtist(:artist =>"r17570",:sort => "releaseDate")

 client = RdioApi.new(:consumer_key => "ww2aaagaw3jcj632gm53hy5m", :consumer_secret => "MsWVVNUrZj")


sorted = client.getAlbumsForArtist(:artist =>"r17570",:sort => "releaseDate").uniq{|h| h["name"]}

def hash_in_array_has_value?(arr, value)
  arr.each do |item|
    return true if item.has_value? "#{value}"
  end
end

holder = []
sorted.each do |item|
  unless hash_in_array_has_value?(sorted, item["name"])
    holder << item
  end
end


######################

test2.each do |item|
if item.has_value? "Enter The Wu-Tang"
 p "it does"
 end
end

two_hashes =[{:name => "Freddie_Jones", :job => "veterinarian"},{:name => "Freddie_Jones", :job => "firefighter"}]

sorted.each do |item|
   p item["name"]
 end


test2 = [{
           "baseIcon" => "album/2/a/4/000000000003c4a2/square-200.jpg",
        "releaseDate" => "1993-11-09",
        "displayDate" => "Nov  9, 1993",
           "duration" => 2169,
            "isClean" => false,
           "shortUrl" => "http://rd.io/x/Qj5Bm-E/",
          "canStream" => true,
           "embedUrl" => "https://rd.io/e/Qj5Bm-E/",
               "type" => "a",
              "price" => "8.99",
                "key" => "a246946",
               "icon" => "http://img00.cdn2-rdio.com/album/2/a/4/000000000003c4a2/square-200.jpg",
          "canSample" => true,
               "name" => "Enter The Wu-Tang",
         "isExplicit" => true,
             "artist" => "Wu-Tang Clan",
                "url" => "/artist/Wu-Tang_Clan/album/Enter_The_Wu-Tang_1/",
          "artistKey" => "r17570",
             "length" => 9,
          "trackKeys" => [
             "t3012863",
             "t3012924",
             "t3012984",
             "t3013068",
             "t3013148",
             "t3013251",
             "t3013324",
             "t3013407",
             "t3013503"
        ],
          "canTether" => true,
          "artistUrl" => "/artist/Wu-Tang_Clan/"
    }]


["tag_list"]["tag"][0]


  <% @sorted_albums.each do |album| %>
     <img src= "<%= album["icon"] %>" title= "<%= album["releaseDate"] %>">
  <% end %>
