class Shelter

attr_accessor :new_client, :adoptable_animal, :clients, :species, :toys

	def intialize(#animals, clients,
	 shelter_name, shelter_address, shelter_telephone, initial_animals)
		# @animals = []
		# @clients = []
		@shelter = []
		@shelter_name = shelter_name
		@shelter_address = shelter_address
		# @shelter_telephone = shelter_telephone
		# @initial_animals = initial_animals
	end


	def shelter
	# (shelter_name, shelter_address, shelter_telephone, initial animals)
		shelter_name = "HappiTails"
		shelter_address = "10 East 21st Street"
		# shelter_telephone = 212-555-5555
		# initial_animals = 0
		return shelter 
	end

  # animal1 = Animal.new("Spot", 2, "male", "dog")
  # animal2 = Animal.new("Fluffy", 3, "female", "cat")
  # animal3 = Animal.new("Tweety", 1, "female", "bird")
  # animal4 = Animal.new("Lenny", 4, "male", "lamb")

 #  def num_of_pets
 #  num_of_pets = num_of_pets.new(name, age, gender, species, toys)
 #  end

end

# happiTails = Shelter.new
# happitails.adoptable_animal[:a1] = Animal.new("Spot", 2, "male", "dog")
# happitals.adoptable_animal[:a2] = Animal.new("Fluffy", 3, "female", "cat")
# happitals.adoptable_animal[:a3] = Animal.new("Tweety", 1, "female", "bird")
# happitals.adoptable_animal[:0] = Animal.new("Lenny", 4, "male", "lamb")




