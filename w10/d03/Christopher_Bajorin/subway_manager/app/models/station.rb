class Station < ActiveRecord::Base
  validates :address, presence: true
  has_many :stops
  has_many :lines, through: :stops

end
