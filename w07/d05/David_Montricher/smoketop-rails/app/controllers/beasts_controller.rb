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
  end

  def create
    # check for existing beasts
    if params["name"] == Beast.where("name = ?", params[:name])
      render :json => {:message => "FAILURE"}
    # and add new entry to table
    else
      Beast.create({

        :name => params["#new_beast_name"],
        :diet => params["#new_beast_favorite_color"],
        :light_ethology => params["#new_beast_light_ethology"],
        :habitat => params["new_beast_habitat"],
        :size => params["new_beast_size"],
        :description => params["new_beast_description"],
        :image_filename => params["new_beast_image_filename"]

      })

      render :json => {:message => "You have successfully added your beast"}
    end
  end

  def destroy

  end

  def update

  end

end
