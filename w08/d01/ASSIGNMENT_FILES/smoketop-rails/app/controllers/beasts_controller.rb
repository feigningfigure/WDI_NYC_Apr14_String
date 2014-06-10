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

    respond_to do |format|
      format.html { render :index }
      format.json { render :json => @beasts }
    end
  end

  def show
    render :json => Beast.find(params[:id])
  end

  def create

  end

  def destroy

  end

  def update

  end

end
