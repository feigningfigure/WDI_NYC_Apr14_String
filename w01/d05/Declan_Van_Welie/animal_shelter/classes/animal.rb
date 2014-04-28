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
      @toys = Array.new

  end

  #An attempt to add a method that will take pet names and add them to a name instance variable.
  # def name(given_name)
  #   puts "What is the pet's name?"
  #   gets.chomp
  #   given_name = gets.chomp
  #   @name << given_name
  # end

  # #First attempt to create a pets hash.
  # pet {
  #   :name => ["#{age}","#{species}","#{gender}","pet:toys"]
  # }

  # # Attempt to convert toy array values to string to concatenate in below for spec.
  # def array_value_to_s
  #   for toys.each do
  #     toys[].to_s

  #   end
  # When we display the animal using puts or print, the
  #   to_s method is called to pretty print an Animal
def to_s
  "#{name} is a #{age} year old #{gender} #{species} that loves #{toys}"

  end
end
