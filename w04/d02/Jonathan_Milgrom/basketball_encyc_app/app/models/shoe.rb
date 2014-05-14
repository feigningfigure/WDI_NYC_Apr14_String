class Shoe < ActiveRecord::Base
	has_many :teams, through: :sponsorships

  
  	has_many :sponsorships


end