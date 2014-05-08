class API

  def self.last_api_return(artist_name)
  json_from_last = HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=artist.getinfo&artist=#{artist_name}&api_key=4feb802c67b65c876f49cfae2463ca30&format=json")
  return json_from_last["artist"]["image"][4]["#text"]
end

end
