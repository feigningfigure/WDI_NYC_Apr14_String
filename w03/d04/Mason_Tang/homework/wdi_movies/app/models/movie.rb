class Movie < ActiveRecord::Base



    movie_1_url = "http://www.omdbapi.com/?t=True%20Grit&y=1969"
    @result = HTTParty.get(movie_1_url)


end
