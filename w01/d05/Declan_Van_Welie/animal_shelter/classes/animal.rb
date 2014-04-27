# Define Animal as a class
class Animal

  # Set up accessors and mutators for the attributes of an Animal
  # attr_accessor sets up both for you
  attr_accessor :name, :age, :species, :gender, :toys

  # Used when creating a new animal.
  #   Example:
  #       Animal.new('Timmy', 4, 'male', 'toad')
  def initialize(name, age, species, gender, toys)
      @name = name
      @age = age
      @species = species
      @gender = gender
      @toys = []

  end

  # # Attempt to convert toy array values to string to concatenate in below for spec.
  # def array_value_to_s
  #   for toys.each do
  #     toys[].to_s

  #   end
  # When we display the animal using puts or print, the
  #   to_s method is called to pretty print an Animal
def to_s
  "#{name} is a #{age} year old #{gender} #{species} that loves #{toys}."

  end
end
