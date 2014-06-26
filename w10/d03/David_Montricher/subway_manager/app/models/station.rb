class Station < ActiveRecord::Base
  has_many :subway_lines
  has_many_and_belongs_to_many :subway_lines, through :subway_lines_stations

end
