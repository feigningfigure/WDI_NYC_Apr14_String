class CountriesController < ApplicationController


  def index
    @countries = Country.order(id: :desc)

    @country = Country.new

  end


  def show
    @country = Country.find(params[:id])

    @oilfield = Oilfield.new

  end


  def create

    Country.create(country_attributes)

      render json: {
        strong_params: country_attributes
      }


    redirect_to countries_path

  end

  private


  def country_attributes

    params.require(:country).permit(:title, :description)
  end


end


