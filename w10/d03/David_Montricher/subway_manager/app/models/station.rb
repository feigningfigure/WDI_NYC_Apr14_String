class Station < ActiveRecord::Base
  has_many_and_belongs_to_many :subway_lines



end
