class Shelter

attr_accessor :name, :adoptable_animals

	def intialize(client="HappiTails", address=nil)
		@name = name
		@adoptable_animals = {}
    @client_list = Hash.new
    @animal = Hash.new
		# @shelter_name = shelter_name
		# @shelter_address = shelter_address
		# @animals = []
		# @clients = []
		# @shelter_telephone = shelter_telephone
		# @initial_animals = initial_animals
	end

	# def shelter()
	# 	shelter_name = "HappiTails"
	# 	shelter_address = "10 East 21st Street"
	# 	shelter_telephone = "212-555-5555"
	# 	initial_animals = 0
	# 	return shelter
	# end

end

	# def animal

	# end


 #  	def num_of_pets
 #  	  num_of_pets = num_of_pets.new(name, age, gender, species, toys)
 #  	end

  #  def able_to_donate?
  #   if @pets != 0 && @adopt_animal == false
  #     return true
  #   else
  #     return false
  #   end
  # end

  # animal1 = Animal.new("Spot", 2, "male", "dog")
  # animal2 = Animal.new("Fluffy", 3, "female", "cat")
  # animal3 = Animal.new("Tweety", 1, "female", "bird")
  # animal4 = Animal.new("Lenny", 4, "male", "lamb")


