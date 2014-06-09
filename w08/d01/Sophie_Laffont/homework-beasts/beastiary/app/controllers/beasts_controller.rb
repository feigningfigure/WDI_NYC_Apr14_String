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
      @beasts = Beast.where("diet = ?", params[:diet])
    else
      @beasts = Beast.all
    end

    respond_to do |format|
      format.html
      format.json { render json: @beasts }
    end
end

  def create

  @name = params[:name]
  @diet = params[:diet]
  @light_ethology = params[:light_ethology]
  @habitat= params[:habitat]
  @size = params[:size]
  @description = params[:description]
  @image = params[:image_filename]

  end

  def destroy

  end

  def update

  end


end
