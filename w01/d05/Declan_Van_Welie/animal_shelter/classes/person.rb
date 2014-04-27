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
      @pets = pets_hash[]
      @gender = gender
      @toys = toys

  end

    def add_pets(pets_array)
    pets_array.each do |pets_hash|
      @pets << Animal.new(pets_hash)
    end
  end

    def count_pets
    # if there's no group_size set already
    @pets_hash = @pets.length
  end



  def give_pet_away
   while !@pets.empty?
      donated_pet = Client.new(@pets.pop)
      @groups[last_group_added_to].students << extra_student

  # When we display the animal using puts or print, the
  #   to_s method is called to pretty print an Animal

  puts "#{name} is a #{age} year old #{pets} who loves #{toys}."
    end
  end

end




