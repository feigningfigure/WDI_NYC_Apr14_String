class ArtistsController < ApplicationController

  def create
    Artist.create(artist_attributes)

    redirect_to "/galleries/#{artist_attributes[:gallery_id]}"
  end

  def edit
    @artist = Artist.find(params[:id])
    render partial: "artistform", locals: { artist_local: @artist, cookbook_id: @artist.cookbook.id }
  end

  def show
    # shows one artist
    @artist = Artist.find(params[:id])
  end

  private

  def artist_attributes
    params.require(:artist).permit(:name, :description, :artist_id)
  end


end
