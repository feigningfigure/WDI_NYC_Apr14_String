class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

def pull_movies
# 10.times do

# uri = URI.parse("http://imdbapi.org/?title=Fargo&type=json")
# http = Net::HTTP.new(uri.host, uri.port)
# request = Net::HTTP::Get.new(uri.request_uri)
# response = http.request(request)

# puts response.body
end
  # make api call, turn JSON into a hash, used to use HTTParty(“url”)
  # response_hash = JSON.parse(hTTParty.get(http://www.omdbapi.com/?t=True%20Grit&y=1969).body
  # extract the URL of photo and turn into array of URLS
  # @photos << response_hash[“image_urls”][bigger]


  end
  end


  def index
    #render
  end


end
