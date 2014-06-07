class GladiatorsController < ApplicationController

  def index
   # show me all the chefs
    @gladiators = Gladiator.all
    # render :index
  end

end