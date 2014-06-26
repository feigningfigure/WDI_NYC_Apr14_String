class Station < ActiveRecord::Base

    has_and_belongs_to_many :subway_lines

end
