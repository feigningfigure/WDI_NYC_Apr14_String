class Station < ActiveRecord::Base
  validates :address, presence: true
  has_many :subway_lines, through: :stops
  has_many :stops
end
