class BoxersController < ApplicationController

  def create

    Boxer.create(boxer_attributes)

    # render json: Recipe.create(recipe_attributes)
    redirect_to "/boxingteams/#{boxer_attributes[:boxingteam_id]}"
  end

  #def edit
   # @boxer = Boxer.find(params[:id])
   #render partial: "boxerform", locals: { boxer_local: @boxer, boxingteam_id: @boxer.boxingteams.id }
  #end

  def update
    boxer = Boxer.find(params[:id])

    boxer.update_attributes(boxer_attributes)

    redirect_to "/boxingteams/#{boxer.boxingteam.id}"
    # render json: params
  end

  private

  def boxer_attributes
    params.require(:boxer).permit(:name, :weightclass, :boxingteam_id)
  end

end