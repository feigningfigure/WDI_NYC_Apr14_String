class BeastsController < ApplicationController

  def welcome
    @beasts = Beast.all
    # render inline: "<p>Welcome!</p>", layout: true
    # make this triggered by a click
  end

  def index
    @beasts = Beast.all
  end

  def create
    User.create({
    :name => params["name"],
    :favorite_color => params["favorite_color"],
    :name => params["name"],
    :diet => params["diet"],
    :light_ethology => params["light_ethology"],
    :habitat => params["habitat"],
    :size => params["size"],
    :description => params["description"],
    :image_filename => params["image_filename"]
    })
  end

  def destroy

  end

  def update

  end

end
