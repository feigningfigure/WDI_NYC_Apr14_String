class Station < ActiveRecord::Base
  has_many :subway_lines, through: :sub_stats
  has_many :sub_stats
end
