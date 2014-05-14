class ArtistsController < ApplicationController

  def create
    Artist.create(artist_attributes)

    redirect_to "/galleries/#{artist_attributes[:gallery_id]}"
  end

  def edit
    @artist = Artist.find(params[:id])
    render partial: "artistform", locals: { artist_local: @artist, gallery_id: @artist.gallery.id }
  end


  def update
    artist = Artist.find(params[:id])

    artist.update_attributes(artist_attributes)

    redirect_to "/galleries/#{gallery.cookbook.id}"
    # render json: params
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
