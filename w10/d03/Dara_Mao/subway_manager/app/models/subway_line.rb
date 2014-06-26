class SubwayLine < ActiveRecord::Base
  has_many :stations, through: :transfers
  validates :name, presence: true
end

# has_many :subway_lines, through: :transfers
