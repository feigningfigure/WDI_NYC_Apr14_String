class PostsController < ActionController::Base

layout "application"


def index
    film=params[:movie_name]
    movie=HTTParty.get("http://www.omdbapi.com/?t=#{film}")
  end
end
