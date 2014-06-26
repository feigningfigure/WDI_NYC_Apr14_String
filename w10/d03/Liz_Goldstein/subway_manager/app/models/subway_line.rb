class SubwayLine < ActiveRecord::Base

  has_many :stations, through: :stops

end
