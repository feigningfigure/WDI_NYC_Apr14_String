class Client

	attr_accessor :name, :age, :pets

	def initialize(name, age)
		@name = name
		@age = age
		@pets = {}
	end

	def to_s
		p "#{@name} is a #{@age} year old with #{@pets.length} pets"
	end

	def pet_count
		@pets.length
	end

	def display_pets
		@pets.each {|key, value| puts key}
	end

	def give_away_pet(name)
		if @pets.include?(name)==true
		@pets.delete(name)
		end
	end

	def accept_pet(name, pet_attr)
		# @client.accept_pet('name', pet_attr)
		@pets[name] = pet_attr
	end

end
