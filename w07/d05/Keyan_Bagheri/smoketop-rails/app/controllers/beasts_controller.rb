class BeastsController < ApplicationController

  def welcome
    render inline: "<p>Welcome!</p>", layout: true
  end

  def index

    if params[:diet]
      @diet = params[:diet]
    else
      @diet = "any"
    end

    if @diet != "any"
      respond_to do |format|
        format.html { @beasts = Beast.where("diet = ?", params[:diet]) }
        format.json { render json: Beast.where("diet = ?", params[:diet]) }
      end
    else
      respond_to do |format|
        format.html { @beasts = Beast.all }
        format.json { render json: Beast.all }
      end
    end

  end

  def create

  end

  def destroy

  end

  def update

  end

end
