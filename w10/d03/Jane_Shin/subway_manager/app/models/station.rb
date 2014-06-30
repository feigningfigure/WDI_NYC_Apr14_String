class Station < ActiveRecord::Base
	has_many :subway_lines
end
