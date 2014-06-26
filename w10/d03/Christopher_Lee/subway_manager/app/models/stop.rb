class Stop < ActiveRecord::Base
  belongs_to :subway_lines
  belongs_to :stations
end
