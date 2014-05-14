class Person < ActiveRecord::Base
	has_many :countries, through: :visas
	has_many :visas
end