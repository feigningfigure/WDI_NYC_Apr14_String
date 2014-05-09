class MoviesController < ActionController::Base

def index

end


def create #do |movie|
movie_title = params[:movie_title]
 Movie.create(movie_title)
  redirect_to '/show'

end

 def show
    @movies = Movie.all
  end


end
