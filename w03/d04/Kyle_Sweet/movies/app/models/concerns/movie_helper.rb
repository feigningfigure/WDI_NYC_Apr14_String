class Movie < ActiveRecord::Base


  def title
  movie=HTTParty.get("http://www.omdbapi.com/?t=#{film}")
  movie.fetch("Title")
  end

  def year
  movie=HTTParty.get("http://www.omdbapi.com/?t=#{film}")
  movie.fetch("Year")
  end

  def director
  movie=HTTParty.get("http://www.omdbapi.com/?t=#{film}")
  movie.fetch("Director")
  end

  def rated
  movie=HTTParty.get("http://www.omdbapi.com/?t=#{film}")
  movie.fetch("rated")
  end

  def genre
  movie=HTTParty.get("http://www.omdbapi.com/?t=#{film}")
  movie.fetch("Genre")
  end

  def runtime
  movie=HTTParty.get("http://www.omdbapi.com/?t=#{film}")
  movie.fetch("Runtime")
  end

  def plot
  movie=HTTParty.get("http://www.omdbapi.com/?t=#{film}")
  movie.fetch("Plot")
  end

  def poster
  movie=HTTParty.get("http://www.omdbapi.com/?t=#{film}")
  movie.fetch("Poster")
  end

end
