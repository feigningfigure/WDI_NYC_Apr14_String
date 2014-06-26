class SubwayLine < ActiveRecord::Base
  has_many :stations
  has_many_and_belongs_to_many :stations, through :subway_lines_stations

end
