 # - Build an interface for the api where a user can submit an artist
 #  - Artist information is displayed to the user

require 'musicbrainz'
require 'pry'

MusicBrainz.configure do |c|
  c.app_name = "AppTest"
  c.app_version = "1.0"
  c.contact = "liz.cira.goldstein@http://gmail.com"

end

# puts MusicBrainz::ReleaseGroup.find_by_artist_and_title("beatles","revolver",type=nil)
#The below will print the artist name. Calling the other keys will return their values: {
  # :id         => String,
  # :type       => String,
  # :name       => String,
  # :country    => String,
  # :date_begin => Date,
  # :date_end   => Date,
  # :urls       => Hash

puts MusicBrainz::Artist.find("87b9b3b8-ab93-426c-a200-4012d667a626").name
MusicBrainz::Artist.find("The War On Drugs").name


  # friend_json = HTTParty.get(url)
