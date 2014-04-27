class Client

  # Set up accessors and mutators for the attributes of an Animal
  # attr_accessor sets up both for you
  attr_accessor :name, :age, :pets

  # Used when creating a new animal.
  #   Example:
  #       Animal.new('Timmy', 4, 'male', 'toad')
  def initialize(name, age, pets)
      @name = name
      @age = age
      @pets = Hash.new

  end


  def pets_hash(k, v)
      @pets[k] = v
  end
end
  # #Trying to count the key of a hash.
  # def pet_count
  #   @pets_hash(k, v)
  #   k.length
  # end


  #copy/pasting from scrumr in order to better understand adding clients to shelter class
  # def to_s
  #   "My name is #{@name}"
  # end

   # An attempt to add new pets from the Animal class to the Client class' pets hash.
  #   def add_pets(pets_array)
  #   pets_array.each do |pets_hash|
  #     @pets << Animal.new(pets_hash)
  #   end
  # end

  #   #An attempt to count the pets added to the @pets hash.
  #   def pet_count
  #   # if there's no group_size set already
  #   @pets_hash = @pets.length
  # end

  # #An attempt to pop Animals from the @pet hash.
  # def give_pet_away
  #  while !@pets.empty?
  #     donated_pet = Client.new(@pets.pop)
  #     @groups[last_group_added_to].students << extra_student

  # # When we display the animal using puts or print, the
  # #   to_s method is called to pretty print an Animal

  # puts "#{name} is a #{age} year old #{pets} who loves #{toys}."
  #   end
  # end





