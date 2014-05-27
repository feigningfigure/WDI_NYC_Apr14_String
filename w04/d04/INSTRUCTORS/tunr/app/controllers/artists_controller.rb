class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
    # render json: @artists
  end

  def show
  end

  def create

  end

  def new
  end

  def update
  end

  def destroy
    # find an artist
    artist = Artist.find(params[:id])
    # destroy the artist
    artist.destroy
    # redirect user
    redirect_to artists_path
  end

  def edit
  end

end
