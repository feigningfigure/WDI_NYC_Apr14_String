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

      # render json: {
      #   strong_params: country_attributes
      # }


    redirect_to countries_path

  end


  def edit
    @country = Country.find(params[:id])

    render partial: "countryform", locals: { country_local: @country }
  end

  def update

    country = Country.find(params[:id])

    country.update_attributes(country_attributes)


    redirect_to "/countries/#{params[:id]}"
  end






  private


  def country_attributes

    params.require(:country).permit(:title, :description)
  end


end


