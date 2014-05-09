class Movie < ActiveRecord::Base



  def find_and_create(movie_title)
    title_query = params[:movie_title].gsub(" ","%20")
    movie_hash = JSON.parse(HTTParty.get("http://www.omdbapi.com/?t=#{title_query}"))
    @movie = Movie.create
  end


  def self.save_movie(movie)
    new_movie = Movie.new
    new_movie.title = movie['Title']
    new_movie.year = movie['Year']
    new_movie.rated = movie['Rated']
    new_movie.released = movie['Released']
    new_movie.runtime = movie['Runtime']
    new_movie.genre = movie['Genre']
    new_movie.director = movie['Director']
    new_movie.writer = movie['Writer']
    new_movie.actors = movie['Actors']
    new_movie.plot = movie['Plot']
    new_movie.movie_poster = movie['Poster']
    new_movie.save
  end



end
