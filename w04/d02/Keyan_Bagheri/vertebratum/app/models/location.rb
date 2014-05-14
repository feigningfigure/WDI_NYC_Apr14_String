class Location < ActiveRecord::Base

	belongs_to :animal
	belongs_to :region

end
