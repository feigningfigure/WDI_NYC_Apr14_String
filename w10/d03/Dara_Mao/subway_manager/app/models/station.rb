class Station < ActiveRecord::Base
  has_many :transfers
  has_many :subway_lines, through: :transfers
  validates :address, presence: true
end

  # has_and_belongs_to_many :subway_lines
