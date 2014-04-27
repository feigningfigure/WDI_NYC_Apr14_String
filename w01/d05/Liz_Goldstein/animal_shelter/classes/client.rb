class Client

attr_accessor :name, :age, :pets

  def initialize(name, age)
    @name = name
    @age = age
    @pets = []
  end

  def to_s
    if @pets.empty? == false;
      p "Hi my name is #{@name}, I'm #{age} old and I have #{@pets.length} pets!"
      else
      p "Hi my name is #{@name} and I'm #{@age} years old."
    end
  end

  def client_pet_count
    p "I've got #{@pets.length} pets!"
  end

  def display_pets
    p "Check out my #{@pets.length} pets: #{@pets.to_s}"
    #want this to print pretty too
  end

#how to match within an array and pop it? SHOULD it automatically go to the shelter?
  def give_away_pet(goner)
    # puts "Which one needs to go?"   An alternate way to get input
    # to_adopt = gets.chomp
    if @pets.include?(goner)
      puts "Found it!"
    else
      puts "nope"
    end
  end

  def accept_pet
    # search the index of pets in the shelter array and push it into client array
  end

end

# test = Client.new("Lizzy", 33)
# test.to_s
# test.pets << "Fluffy"
# test.pets << "Fluffy2"
# test.to_s
# # test.client_pet_count
# # test.display_pets
# # test.give_away_pet
# test.give_away_pet("Fluffy")
