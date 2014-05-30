class MoviesController < ActionController::Base
  # they all inherit from the actioncontroller base

  def index

  end


  def search
    movie_title = params[:movie_title]
    Movie.search(movie_title)
    redirect_to '/all'
  end


  def all
    @movies = Movie.all

  end


end
