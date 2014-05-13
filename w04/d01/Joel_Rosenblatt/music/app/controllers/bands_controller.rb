class BandsController < ApplicationController

  def create

    Band.create(band_attributes)

    redirect_to "/genres/#{band_attributes[:genre_id]}"
  end

  def edit
    @band = Band.find(params[:id])
    render partial: "bandform", locals: { band_local: @band, genre_id: @band.genre.id }
  end

  def update
    band = Band.find(params[:id])

    band.update_attributes(band_attributes)

    redirect_to "/genres/#{recipe.genre.id}"
  end

  private

  def recipe_attributes
    params.require(:band).permit(:name, :bio, :genre_id)
  end

end
