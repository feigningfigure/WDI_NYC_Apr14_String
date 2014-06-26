class SubwayLine < ActiveRecord::Base
  has_many :stations, through: :sub_stats
  has_many :sub_stats

end
