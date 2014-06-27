class Station < ActiveRecord::Base

  has_many :subway_lines, through: :stops

end
