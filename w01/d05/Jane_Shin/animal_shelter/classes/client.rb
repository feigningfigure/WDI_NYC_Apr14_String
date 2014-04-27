class Client
	attr_accessor :name, :age, :pets

	def initialize(client_name, client_age)
		@name = client_name
		@age = client_age
		@pets = Hash.new #make hash, change errthing else
	end

	def pet_count
		@pets.length
	end

	def display_pets 
		@pets.each {|pet, pet_attr| puts pet}
	end

	def give_away_pet(name)
		if @pets.include?(name)
			@pets.delete(name)
		end
	end	

	def accept_pet(name, pet_attr)
		@pets[name] = pet_attr
	end
	
	def to_s
		"#{@name} is a #{@age} year old with #{@pets.length} pets"
	end

end
