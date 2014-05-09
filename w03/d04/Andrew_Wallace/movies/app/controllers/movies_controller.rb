class MoviesController < ActionController::Base

# Sets the default layout
layout "application"

  def index

  end

  def search

  end

  def view
    @movies = Movie.find(:id)
  end

  def all
    @movies = Movie.all
  end

end
