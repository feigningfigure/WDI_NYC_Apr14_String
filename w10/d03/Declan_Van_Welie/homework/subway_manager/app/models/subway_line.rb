class SubwayLine < ActiveRecord::Base
  has_many :stops
  has_many :stations, through: :stops

end
