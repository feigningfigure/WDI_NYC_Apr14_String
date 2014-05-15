class Characters < ActiveRecord::Base

	has_many :scenes, through: :dialogues

	has_many :dialogues

end
