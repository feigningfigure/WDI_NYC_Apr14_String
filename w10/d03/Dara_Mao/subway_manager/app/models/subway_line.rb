class SubwayLine < ActiveRecord::Base
  has_many :transfers
  has_many :stations, through: :transfers
  validates :name, presence: true
end

