require 'MusicBrainz'
require 'HTTParty'
require 'awesome_print'

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

url = "http://www.musicbrainz.org/ws/2/artist/ee231388-c32f-4848-9c19-5730a7f049f6?inc=release-groups"
  artist_hash = HTTParty.get(url)


  url = "http://www.musicbrainz.org/ws/2/release/04bc55af-516a-35cd-9c69-eab8f151873e?inc=recordings"



  <% if @comps.length > 0 %>
  <h5> Compilations </h5>
  <ul>
    <% @comps.each do |index| %>
    <li><a href="/<%=@artist_hash["name"]%>/albums/<%=index["id"] %>"><%=index["title"]%></a></li>
    <%end%>
  </ul>
  <%end%>
