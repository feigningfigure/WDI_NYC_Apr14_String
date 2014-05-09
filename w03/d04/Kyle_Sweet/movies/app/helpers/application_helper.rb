module ApplicationHelper

  def search_movie
    film=params[:movie_name]
    movie=HTTParty("http://www.omdbapi.com/?t=#{film}")
  end



end
