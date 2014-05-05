require_relative 'index'

query = params[:query].gsub(" ", "%20")
url = "http://musicbrainz.org/ws/2/artist/?query=#{query}"

def query(query, url)
  query = params[:query].gsub(" ", "%20")
  url = "http://musicbrainz.org/ws/2/artist/?query=#{query}"
end

def parse  
  # Get the XML Data
  artist_xml = HTTParty.get(url)
  # Parse XML to JSON
  artist_json = artist_xml.parsed_response
  artist_hash = artist_json["metadata"]["artist_list"]["artist"][0]
end

class Artist

  attr_accessor :id, :name, :country

  def initialize
      @id = id
      @name = name
      @country = country
  end
end

# def lastfm_parser(artist_id)
#   url = "http://ws.audioscrobbler.com/2.0/"
# end
