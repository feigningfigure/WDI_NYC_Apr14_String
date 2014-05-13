class ContinentsController < ApplicationController

  def index
  	@continents = Continent.order(id: :desc)
  	@continent = Continent.new
  end

  def show
  	@continent = Continent.find(params[:id])
  	@country = Country.new
  end

  def create
  	Continent.create(continent_attributes)

  	redirect_to continents_path
  end

  def edit
  	@continent = Continent.find(params[:id])
  	render partial: "continentform", locals: { continent_local: @continent }
  end

  def update
  	continent = Continent.find(params[:id])
  	continent.update_attributes(continent_attributes)
  	redirect_to "/continents/#{params[:id]}"
  end

  private

  def continent_attributes
  	params.require(:continent).permit(:name, :area)
  end

end