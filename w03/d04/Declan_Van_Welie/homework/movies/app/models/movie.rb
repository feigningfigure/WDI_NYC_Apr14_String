class Movie < ActiveRecord::Base


def create(movie_title)

url_movie_title = movie_title.gsub(' ', '%20')

movie_hash = JSON.parse(HTTParty.get("http://www.omdbapi.com/?t=#{url_movie_title}"))

self.save(movie)

end


# def create do |movie|

#   @movie = Movie.create(:title => params[:title])
#   redirect_to /movies/

# end

def self.save(movie)

m= Movie.new
m.title = movie_hash["Title"]
m.year = movie_hash["Year"]
m.rated = movie_hash["Rated"]
m.released = movie_hash["Released"]
m.runtime = movie_hash["Runtime"]
m.genre = movie_hash["Genre"]
m.director = movie_hash["Director"]
m.writer = movie_hash["Writer"]
m.actors = movie_hash["Actors"]
m.plot = movie_hash["Plot"]
m.movie_poster = movie_hash["Poster"]

end

end
