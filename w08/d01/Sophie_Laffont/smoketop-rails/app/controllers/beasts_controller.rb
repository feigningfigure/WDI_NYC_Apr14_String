class BeastsController < ApplicationController

  def index
    if params[:diet]
      @diet = params[:diet]
    else
      @diet = "any"
    end

    if @diet != "any"
      @beasts = Beast.where("diet = ?", params[:diet])
    else
      @beasts = Beast.all
    end

    if params["partial"]
      # this automagically renders a list of _beast partials
      render @beasts
    else
      render :index
    end
  end

  def create

  end

  def destroy

  end

  def update

  end

end
