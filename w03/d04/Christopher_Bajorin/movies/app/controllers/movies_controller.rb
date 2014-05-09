class MoviesController < ActionController::Base

  layout "application"


  def all

  end


  def new
    @current_movie = Movie.new
    binding.pry

  end


  def show

  end

end
