class BeastsController < ApplicationController

  def welcome
    @beasts = Beast.all
    # render inline: "<p>Welcome!</p>", layout: true
    # make this triggered by a click
  end

  def index
    @beasts = Beast.all
    # if params[:diet]
    #   @diet = params[:diet]
    # else
    #   @diet = "any"
    # end

    # if @diet != "any"
    #   @beasts = Beast.where("diet = ?", params[:diet])
    # else
    #   @beasts = Beast.all
    # end
  end

  def create

  end

  def destroy

  end

  def update

  end

end
