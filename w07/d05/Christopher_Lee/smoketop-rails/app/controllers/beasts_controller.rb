class BeastsController < ApplicationController

  def welcome
    @beasts = Beast.all
    # render inline: "<p>Welcome!</p>", layout: true
    # make this triggered by a click
  end

  def index
    @beasts = Beast.all.order('id DESC')
  end

  def create
    Beast.create({
    :name => params["name"],
    :diet => params["diet"],
    :light_ethology => params["light_ethology"],
    :habitat => params["habitat"],
    :size => params["size"],
    :description => params["description"],
    :image_filename => params["image_filename"]
    })
  end

  def destroy
    Beast.destroy(params[:id])
    respond_to do |format|
      format.json { render json: @beasts }
    end
  end


  def update

  end

end
