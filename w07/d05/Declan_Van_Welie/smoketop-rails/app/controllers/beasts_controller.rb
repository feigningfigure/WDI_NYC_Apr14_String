class BeastsController < ApplicationController

  def welcome
    render inline: "<p>Welcome!</p>", layout: true
  end

  def index

    # show all beasts on the page

    respond_to do |format|
      format.html { @beasts = Beast.all }
      format.json { render json: Beast.all }
    end
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
    # Add in forms for a create page.
     new_beast = Beast.create(
      {name: params["name"],
       diet: params["diet"],
       light_ethology: params["light_ethology"],
       habitat: params["habitat"],
       size: params["size"],
       description: params["description"],
       image_filename: params["image_filename"]
       })

    respond_to do |format|
      format.json { render json: { message: "New beast created" } }

    end
  end

  def destroy

  end

  def update

  end

end
