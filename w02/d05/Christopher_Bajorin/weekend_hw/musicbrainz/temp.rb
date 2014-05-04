require 'MusicBrainz'
require 'HTTParty'

MusicBrainz.configure do |c|
  # Application identity (required)
  c.app_name = "My Music App"
  c.app_version = "1.0"
  c.contact = "support@mymusicapp.com"

  # Cache config (optional)
  c.cache_path = "/tmp/musicbrainz-cache"
  c.perform_caching = true

  # Querying config (optional)
  c.query_interval = 1.2 # seconds
  c.tries_limit = 2
end

url = "http://www.musicbrainz.org/ws/2/artist/82256d8d-feed-41b4-a863-86d8c9b14678?inc=release-groups"
  artist_hash = HTTParty.get(url)

bc569a61-dd62-4758-86c6-e99dcb1fdda6
