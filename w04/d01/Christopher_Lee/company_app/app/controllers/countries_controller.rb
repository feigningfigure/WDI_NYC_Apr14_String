class CountriesController < ApplicationController
  def new
    @country = Country.new
  end

   def create
    Country.create(country_attributes)

    # render json: {
    #   strong_params: country_attributes
    # }

    redirect_to '/'
  end

  private
    def country_attributes
    # whitelisting parts of the params hash, that are DB-safe
    params.require(:country).permit(:name, :language, :flag_url)
  end
end
