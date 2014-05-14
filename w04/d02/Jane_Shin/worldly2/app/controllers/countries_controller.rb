class CountriesController < ApplicationController

  def create
  	Country.create(country_attributes)
  	redirect_to "/continents/#{country_attributes[:continent_id]}"
  end

  def edit
  	@country = Country.find(params[:id])
  	render partial: "countryform", locals: { country_local: @country, continent_id: @country.continent.id }
  end

  def update
  	country = Country.find(params[:id])
  	country.update_attributes(country_attributes)
  	redirect_to "/continents/#{country.continent.id}"
  end

  def show
    @country = Country.find(params[:id])
    @person = Person.new
  end

  private

  def country_attributes
  	params.require(:country).permit(:name, :population, :language, :continent_id)
  end

end
