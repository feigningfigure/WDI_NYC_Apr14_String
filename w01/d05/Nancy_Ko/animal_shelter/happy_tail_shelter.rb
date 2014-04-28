class Shelter
attr_accessor :client :adopt_animal

  def initialize (adopt_animal, client)
    @adopt_animal = {}
    @client = {}
  end

  def give_up(name, age, species, gender, toys, num_of_pets)
  	num_of_pets -= 1

  end
end