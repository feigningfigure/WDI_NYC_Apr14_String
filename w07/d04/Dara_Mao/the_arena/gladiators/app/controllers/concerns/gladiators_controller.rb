class GladiatorsController < ApplicationController

  def index

    @gladiators = Gladiator.all
    # render json: @gladiators

    @gladiator = Gladiator.new
    # render json: @gladiators
  end

end
