class MoviesController < ActionController::Base

  layout "application"

  def index

  end

  def search
    movie_title = params[:movie_search]
    Movie.search(movie_title)
    movies = Movie.order(id: :desc)
    @movie = movies.first
  end

  def all
    @movies = Movie.all
  end

end
