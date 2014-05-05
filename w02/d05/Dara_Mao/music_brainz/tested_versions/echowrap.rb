
require 'echowrap'

Echowrap.configure do |config|
  config.api_key =       'EYWYMJLC2MMGVFF1C '
  config.consumer_key =  'e6d40262e3b1824bbcc164a93a46742f '
  config.shared_secret = 'GdgdbUa2SNWQ7taOh+scuQ'
end

# Echowrap.song_search(:key => 8,
#                      :mode => 0,
#                      :min_tempo => 87,
#                      :max_tempo =>  93,
#                      :artist_min_familiarity => 0.8,
#                      :results => 100,
#                      :sort => 'danceability-desc'
#                      ).map do |song|
#   puts "#{song.id} #{song.artist_id} #{song.artist_name} #{song.title}"
# end

Echowrap.artist_images(:name => 'daft punk',
                        :results => 1)

  def find_images
    @images = Echowrap.artist_images(:name => params[:artist_name])
  end


#  def artist_images(options={})
#         objects_from_response(Echowrap::Image, :get, '/api/v4/artist/images', :images, options)
#       end

# artist_images(options={"daft punk"})
