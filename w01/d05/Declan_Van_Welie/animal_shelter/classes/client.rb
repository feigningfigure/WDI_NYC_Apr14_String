class Client

  # Set up accessors and mutators for the attributes of an Animal
  # attr_accessor sets up both for you
  attr_accessor :name, :age, :pets, :gender, :toys

  # Used when creating a new animal.
  #   Example:
  #       Animal.new('Timmy', 4, 'male', 'toad')
  def initialize(name, age, pets, gender, toys)
      @name = name
      @age = age
      @pets = pets
      @gender = gender
      @toys = toys

  end

  # When we display the animal using puts or print, the
  #   to_s method is called to pretty print an Animal

  puts "#{name} is a #{age} year old #{pets} who loves #{toys}."

end
