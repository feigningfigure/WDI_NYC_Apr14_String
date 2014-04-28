require_relative 'shelter'
require_relative 'animal'



class Client
  attr_accessor :name, :age, :pets
  def initialize(name=nil, age=1)
    @name = name
    @age = age
    @pets = {}
  end

  def to_s
    "#{@name} is a #{@age} year old with #{@pets.count} pets"
  end

  def display_pets
    @pets.each { |k, v| puts k }
  end

  def pet_count
    @pets.count
  end

  def give_away_pet(name)
    @pets.delete(name)
  end


  def accept_pet(name, pet_name)
    @pets[name] = pet_name
  end

end
