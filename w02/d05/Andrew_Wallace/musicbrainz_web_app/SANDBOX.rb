# def receive_and_parse(query)

# end


class Artist

  attr_accessor :id, :name, :country

  def initialize(artist_hash)
      @id = id
      @name = name
      @country = country
  end

  def show
    puts @id
    puts @name
    puts @country
  end
end

# def lastfm_parser(artist_id)
#   url = "http://ws.audioscrobbler.com/2.0/"
# end
