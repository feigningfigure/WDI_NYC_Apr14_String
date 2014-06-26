class SubwayLine < ActiveRecord::Base
  has_many :stations, through: :stops
  has_many :stations
end
