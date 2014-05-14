class Team < ActiveRecord::Base
	has_many :players

	has_many :shoes, through: :sponsorships

  
  	has_many :sponsorships

end