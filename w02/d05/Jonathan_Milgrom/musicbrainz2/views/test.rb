 url = "http://musicbrainz.org/ws/2/artist/83d91898-7763-47d7-b03b-b92132375c47?inc=release-groups"
  
  main_hash = HTTParty.get(url)
  @album_array = main_hash["metadata"]["artist"]["release_group_list"]["release_group"]

  url = "http://musicbrainz.org/ws/2/release-group/20c77fb4-1c9f-33c8-9d7e-c4977f11e847?inc=releases"