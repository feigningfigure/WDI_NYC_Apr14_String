class MoviesController < ActionController::Base

  layout "application"

  def index

  end

  def search
    movie_title = params[:movie_search]
    Movie.search(movie_title)
    @movies = Movie.all
  end

  def all
    @movies = Movie.all
  end

end
