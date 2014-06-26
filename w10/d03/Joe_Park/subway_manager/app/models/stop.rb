class Stop < ActiveRecord::Base
  validates :station_id,:subway_line_id, presence: true
  belongs_to :station
  belongs_to :subway_line
end
