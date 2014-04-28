class Shelter

attr_accessor :new_client, :adoptable_animal, :clients, :species, :toys

	def intialize(client, age)
		@adoptable_animals = {}
    @client_list = {}
		# @shelter_name = shelter_name
		# @shelter_address = shelter_address
		# @animals = []
		# @clients = []
		# @shelter_telephone = shelter_telephone
		# @initial_animals = initial_animals
	end

	def shelter()
		shelter_name = "HappiTails"
		shelter_address = "10 East 21st Street"
		shelter_telephone = "212-555-5555"
		initial_animals = 0
		return shelter
	end
  # animal1 = Animal.new("Spot", 2, "male", "dog")
  # animal2 = Animal.new("Fluffy", 3, "female", "cat")
  # animal3 = Animal.new("Tweety", 1, "female", "bird")
  # animal4 = Animal.new("Lenny", 4, "male", "lamb")

	# def animal

	# end


 #  	def num_of_pets
 #  	  num_of_pets = num_of_pets.new(name, age, gender, species, toys)
 #  	end

   def able_to_donate?
    if @pets != 0 && @adopt_animal == false
      return true
    else
      return false
    end
  end

end



