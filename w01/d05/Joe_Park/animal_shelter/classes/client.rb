class Client

  attr_accessor :name, :age, :pets

  def initialize(name, age)
    @name = name
    @age = age
    @pets = {}
    # @client = {}
  end

  def accept_pet(pet_name, owner)
      @pets[pet_name] = owner

  end

  def give_away_pet(pet_name)
    if
      @pets.include?(pet_name)
      @pets.delete(pet_name)
    end
  end

  def display_pets
      @pets.each {|k,v| puts k}

  end

  def pet_count
      @pets.count
  end

  def to_s
    "#{@name} is a #{@age} year old with #{pet_count} pets"
  end
end

# client1 = Client.new("mason", 25)
# client1.to_s
# client2 = Client.new("no_owner", nil)
# client2.to_s

# client1.accept_pet(:tigger, "mason")
# client1.to_s
# client1.display_pets

# client1.accept_pet(:tigger, "no_owner")
# client1.to_s
# client1.display_pets
# client2.to_s
# client2.display_pets
  # @name.pets["Rou"] = Animal.new
