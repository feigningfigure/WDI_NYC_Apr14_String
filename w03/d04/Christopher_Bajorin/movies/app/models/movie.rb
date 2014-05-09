# MODEL

class Movie < ActiveRecord::Base

  # API CALL GOES IN THE MODEL

  def movie_hash
    url = "https://www.omdbapi.com/?t=#{params[:title]}"
    movie_hash = JSON.parse(HTTParty.get(url).body)

  end


end
