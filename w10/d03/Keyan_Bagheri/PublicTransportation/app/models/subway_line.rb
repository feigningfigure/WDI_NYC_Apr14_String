class SubwayLine < ActiveRecord::Base
  validates :name, :color, presence: true
  has_many :stops
  has_many :stations, through: :stops
end
