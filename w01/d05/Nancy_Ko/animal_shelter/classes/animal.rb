
#  # Define Animal as a class
# class Animal
#   # Set up accessors and mutators for the attributes of an Animal
#   # attr_accessor sets up both for you
#   attr_accessor :name, :age, :gender, :species, :toys, 
#   	:num_of_pets

#   # Used when creating a new animal.
#   #   Example:
#   #       Animal.new('Timmy', 4, 'male', 'toad')
#   def initialize
#     @name = name 
#     @age = age
#     @gender = gender
#     @species = species
#     @toys = toys
#   end

# def display_animals

# end


# def create_animal
# end

  # def 
  # end 

  # When we display the animal using puts or print, the
  #   to_s method is called to pretty print an Animal
#   def to_s
#     puts "Hi, we have #{name} a #{age} 
#     #{gender} #{species}."
#   end
# end

# Define Animal as a class
class Animal
  # Set up accessors and mutators for the attributes of an Animal
  # attr_accessor sets up both for you
  attr_accessor :name, :age, :gender, :species, :toys


  # Used when creating a new animal.
  #  Example:
  #      Animal.new('Timmy', 4, 'male', 'toad')
  def initialize(name, age, gender, species, toys)
    @name = name
    @age = age
    @gender = gender
    @species = species
    @toys = toys
  end

  def animal
   name = "Spot"
   gender = "male"
   age = 40
   return animal
  end


# def to_s
#     puts "Hi, we have #{name} a #{age} 
#     #{gender} #{species}."
#   end
end



