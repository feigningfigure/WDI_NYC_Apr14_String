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

  end

  def destroy

  end

  def update

  end

end
