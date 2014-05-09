class MoviesController < ActionController::Base

  layout "application"


  def index



  end


  def film

    response = HTTParty.get("http://www.omdbapi.com/?t=True%20Grit&y=1969")
    JSON.parse(response).each do |item|

    end

  def create
    @movie = Movie.create(
      :Title => params[:title]
      :Year => params[:year]
      :Rated => params[:rated]
      :Released => params[:released]
      :Runtime => params[:runtime]
      :Genre => params[:genre]
      :Director => params[:director]
      :Writers => params[:writers]
      :Actors => params[:actors]
      :Plot => params[:plot]
      :Movie_Poster => params[:movie_poster]
      )

      redirect_to "/"
  end

  def show

  end



  def all


  end

end

