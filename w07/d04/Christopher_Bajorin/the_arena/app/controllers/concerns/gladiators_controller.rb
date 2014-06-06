class GladiatorsController < ActionController::Base

  def index
    @gladiators = Gladiator.all
  end
end
