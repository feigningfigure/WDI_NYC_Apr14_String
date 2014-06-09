class BeastsController < ApplicationController

  def welcome
    render inline: "<p>Welcome!</p>", layout: true
  end

  def index
    respond_to do |format|
      format.html {
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
      }

      format.json { 
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
      }
    end

  end

  def show
    respond_to do |format|
      format.html {
          @beasts = Beast.where("id = ?", params[:id])
      }
    end
  end

  def create

  end

  def destroy
    respond_to do |format|
      Beast.find(params[:id]).destroy
      format.html {
        puts "destory via html"
        redirect_to beasts_path
      }
      format.json {
        puts "destory via json"
        render json: "Hello JSON RESPONSE"
      }
    end
  end   

  def update

  end

end
