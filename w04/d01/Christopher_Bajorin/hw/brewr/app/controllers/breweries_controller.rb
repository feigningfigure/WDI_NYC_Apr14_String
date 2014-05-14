class BreweriesController < ApplicationController

  def index
    @breweries = Brewery.order(id: :desc)
    @brewery = Brewery.new
  end

  def show
    @brewery = Brewery.find(params[:id])
    @beer = Beer.new
  end

  def create
    Brewery.create(brewery_attributes)

    redirect_to breweries_path
  end

  def edit
    @brewery = Brewery.find(params[:id])
    render partial: "breweryform", locals: { brewery_local: @brewery}
  end

  def update
    brewery = Brewery.find(params[:id])
    brewery.update_attributes(brewery_attributes)
    redirect_to "/breweries/#{params[:id]}"
  end



   private

  # strong params
  def brewery_attributes
    # whitelisting parts of the params hash, that are DB-safe
    params.require(:brewery).permit(:name, :location, :description)
  end
end
