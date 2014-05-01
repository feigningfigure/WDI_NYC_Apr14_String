class Client

attr_accessor :name, :age, :pets

  def initialize(name, age=nil)
    @name = name
    @age = age
    @pets = {}
  end

  def create
    puts "I know it's personal but how old are you, #{name}? I'm not hitting on you."
    @age = gets.chomp
    $happitails.clients << @name
    puts "Glad to have you as a client, #{name}!"
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
    @pets.each {|key, value| puts key, value}
  end

#how to match within an array and pop it? SHOULD it automatically go to the shelter?
  def give_away_pet(goner)
    if @pets.include?(goner)==true
       @pets.delete(goner)
    end
  end

  def accept_pet(k, v)
    @pets[k] = v
  end

  # def accept_pet(pet)


  # end

end

test = Client.new("Lizzy", 33)
# test.to_s
test.pets["fluffy"] = Object.new
test.pets["fluffy2"] = Object.new
test.display_pets
test.to_s
test.give_away_pet("fluffy")
test.display_pets
test.to_s
# # test.pets << "Fluffy2"
# test.to_s
# # test.client_pet_count

# test.give_away_pet
# test.give_away_pet("Fluffy")
