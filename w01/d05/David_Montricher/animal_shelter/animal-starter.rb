# Define Animal as a class
class Animal

  # Set up accessors and mutators for the attributes of an Animal
  # attr_accessor sets up both for you
  attr_accessor :name, :age, :gender, :species, :toys

  # Used when creating a new animal.
  #   Example:
  #       Animal.new('Timmy', 4, 'male', 'toad')
  def initialize(name, age, gender, species)
      @name = name
      @age = age
      @gender = gender
      @species = species
      @toys = toys

  end

  # When we display the animal using puts or print, the
  #   to_s method is called to pretty print an Animal

  puts "#{name} is a #{age} year old #{species} who loves #{toys}."

  end
end
