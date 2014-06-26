class SubwayLinesController < ActionController::Base
  def index
    @subwaylines = SubwayLine.all
  end
end
