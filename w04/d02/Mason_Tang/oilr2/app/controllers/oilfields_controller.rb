class OilfieldsController < ApplicationController

  def create

    Oilfield.create(oilfield_attributes)

    redirect_to "/countries/#{oilfield_attributes[:country_id]}"
  end

  def edit
    @oilfield = Oilfield.find(params[:id])
    render partial: "oilfieldform", locals: { oilfield_local: @oilfield, country_id: @oilfield.country.id }
  end

  def update
    oilfield = Oilfield.find(params[:id])

    oilfield.update_attributes(oilfield_attributes)

    redirect_to "/countries/#{oilfield.country.id}"
    # render json: params
  end

  def show
    @oilfield = Oilfield.find(params[:id])
  end

  private

  def oilfield_attributes
    params.require(:oilfield).permit(:title, :content, :country_id)
  end

end
