class BeastsController < ApplicationController

  def welcome
    render inline: "<p>Welcome!</p>", layout: true
  end

  def index
    respond_to do |format|
      format.html { 
        if params[:diet] 
          @diet = params[:diet] 
        elsif
          @diet = "any"
        end
      }  
       
        if @diet != "any"
          @beasts = Beast.where("diet = ?", params[:diet])
        else
          @beasts = Beast.all
        end 
    end
  end

  def new 
  end 

  def create
    @new_beast = Beast.create({name: params["name"], diet: params["diet"], light_ethology: params["light_ethology"], habitat: params["habitat"], size: params["size"], description: params["description"], image_filename: params["image_filename"]})
    respond_to do |format|
      format.json { render json: @new_beast }
    end
  end

  def destroy

  end   

  def update

  end

end
