class Movie < ActiveRecord::Base

  def self.get_hash
    # url = "https://www.omdbapi.com/?t=#{params[:title]}"
    # movie_hash = HTTParty.get(url)

    movie_hash = {
      this: "ball",
      that: "string",
      near: "far"
    }
  end

  def new
    movie = Movie.new
    binding.pry
    movie_test = movie.get_hash
    binding.pry
  end

end
