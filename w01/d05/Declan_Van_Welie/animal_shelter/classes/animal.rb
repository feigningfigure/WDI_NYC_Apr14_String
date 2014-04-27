# Define Animal as a class
class Animal

  # Set up accessors and mutators for the attributes of an Animal
  # attr_accessor sets up both for you
  attr_accessor :pet_name, :pet_age, :pet_species, :pet_gender, :pet_toys

  # Used when creating a new animal.
  #   Example:
  #       Animal.new('Timmy', 4, 'male', 'toad')
  def initialize(pet_name, pet_age, pet_species, pet_gender, pet_toys)
      @pet_name = pet_name
      @pet_age = pet_age
      @pet_species = pet_species
      @pet_gender = pet_gender
      @pet_toys = pet_toys

  end

  #An attempt to add a method that will take pet names and add them to a name instance variable.
  def name(given_name)
    puts "What is the pet's name?"
    gets.chomp
    given_name = gets.chomp
    @pet_name << given_name
  end

  # #First attempt to create a pets hash.
  # pet {
  #   :name => ["#{pet_age}","#{pet_species}","#{pet_gender}","pet:toys"]
  # }

  # # Attempt to convert toy array values to string to concatenate in below for spec.
  # def array_value_to_s
  #   for pet_toys.each do
  #     pet_toys[].to_s

  #   end
  # When we display the animal using puts or print, the
  #   to_s method is called to pretty print an Animal
def to_s
  "#{pet_name} is a #{pet_age} year old #{pet_gender} #{pet_species} that loves #{pet_toys}."

  end
end
