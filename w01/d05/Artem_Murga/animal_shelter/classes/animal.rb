class Animal

	attr_accessor :name, :age, :species, :toys

	def initialize (name)
		@name = name
		@species = nil
		@toys = []	
	end
end
