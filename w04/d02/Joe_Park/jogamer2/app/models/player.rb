class Player < ActiveRecord::Base
	has_many :games, through: :groups

	has_many :groups
end