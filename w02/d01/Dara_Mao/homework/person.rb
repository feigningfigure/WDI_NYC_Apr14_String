class Client

  attr_accessor :name, :age, :pets

  def initialize(name,age)
    @name = name
    @age = age
    @pets = {}
  end

  def to_s
    "#{@name} is a #{@age} year old with #{@pets.length} pets"
  end

  def give_away_pet(pet_name)
    @pets.delete(pet_name)
  end

  def accept_pet(name,hash)
    @pets[name] = hash
  end

  def display_pets
    @pets.each { |k, v| puts k }
  end

  def pet_count
    @pets.length
  end
end
