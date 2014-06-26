class Stop < ActiveRecord::Base

  belongs_to :stations
  belongs_to :subway_lines

end
