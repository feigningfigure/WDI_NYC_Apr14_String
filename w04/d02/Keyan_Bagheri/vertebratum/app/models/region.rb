class Region < ActiveRecord::Base
	has_many :animals, through: :locations

	has_many :locations
end
