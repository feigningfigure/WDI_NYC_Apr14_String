artist_name = snoop dogg
  if artist_name.split.length > 1
      artist_name = artist_name.split.join("+")
  end

  api_search = HTTParty.get("http://musicbrainz.org/ws/2/artist/?query=artist:#{artist_name}")
  artist_list = api_search["metadata"]["artist_list"]["artist"]

  api_search = HTTParty.get("http://musicbrainz.org/ws/2/artist/?query=artist:nas")
  artist_list[0]["life_span"]["begin"]


    search = client.search(:query=>"#{"snoop dogg"}", :types =>"Artist")
