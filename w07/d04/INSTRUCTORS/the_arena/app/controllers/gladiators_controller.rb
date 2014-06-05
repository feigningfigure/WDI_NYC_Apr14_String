class GladiatorsController < ApplicationController

  def index
    @gladiators = Gladiator.all
  end

end
