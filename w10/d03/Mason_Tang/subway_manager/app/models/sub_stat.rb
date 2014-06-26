class SubStat < ActiveRecord::Base
  belongs_to :subway_line
  belongs_to :station
end
