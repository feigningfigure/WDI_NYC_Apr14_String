class BeastsController < ApplicationController

  def welcome
    render inline: "<p>Welcome!</p>", layout: true
  end

  def index
    respond_to do |format|

      if params[:diet]
        @diet = params[:diet]
      else
        @diet = "any"
      end

      if @diet != "any"
        # binding.pry
        format.html { @beasts = Beast.where("diet = ?", params[:diet]) }
        format.json { render json: Beast.where("diet = ?", params[:diet]) }
      else
        # binding.pry
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
