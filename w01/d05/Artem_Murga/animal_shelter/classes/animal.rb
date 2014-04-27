class Animal

	attr_accessor :name, :age, :species, :toys

	def initialize (name)
		#name should be uniq
		@name = name
		@age = age
		@species = nil
		@toys = []	
	end

	def to_s
		"#{@name} is a #{@age} year old #{@species} that loves #{toys}"
	end
end
