class MovieController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  layout "application"

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
