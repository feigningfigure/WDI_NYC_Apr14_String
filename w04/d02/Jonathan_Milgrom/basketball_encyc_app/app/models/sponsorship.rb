class Sponsorship < ActiveRecord::Base
	
	belongs_to :team
	belongs_to :shoe

end