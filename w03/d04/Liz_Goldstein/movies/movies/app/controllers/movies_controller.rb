class MoviesController < ActionController::Base

  layout "application"

  def index
     @movies = Movies.all
  end


end
