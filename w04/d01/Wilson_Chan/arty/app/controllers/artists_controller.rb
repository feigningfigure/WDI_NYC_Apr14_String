class ArtistsController < ApplicationController

  def create
    Artist.create(artists_attributes)

    redirect_to root_path
  end


end
