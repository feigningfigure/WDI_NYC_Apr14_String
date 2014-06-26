class SubwayLineController < ApplicationController

def index
  subway_lines = SubwayLine.all
  subway_line = SubwayLine.find(params:id)
  stations = subway_line.stations
end


end

