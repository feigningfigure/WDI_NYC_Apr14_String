class BeersController < ApplicationController

  def create

    Beer.create(beer_attributes)
    redirect_to "/breweries/#{beer_attributes[:brewery_id]}"
  end

  def edit
    @beer = Beer.find(params[:id])
    render partial: "beerform", locals: { beer_local: @beer, brewery_id: @beer.brewery.id }
  end

  def update
    beer = Beer.find(params[:id])
    beer.update_attributes(beer_attributes)
    redirect_to "/breweries/#{beer.brewery.id}"
  end

  private

  def beer_attributes
    params.require(:beer).permit(:name, :style, :description, :brewery_id)
  end

end
